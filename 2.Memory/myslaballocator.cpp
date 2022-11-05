/*SLAB аллокатор
Попробуйте реализовать кеширующий аллокатор. Детали интерфейса, который вам нужно реализовать, вы можете 
найти в шаблоне кода, как и объявления функций, которые вы должны использовать для аллокации SLAB-ов. 
Кроме предоставленных функций аллокации никакими другими способами динамической аллокации памяти 
пользоваться нельзя.

Считайте, что для аллокации SLAB-ов используется buddy аллокатор (с соответствующей алгоритмической 
сложностью и ограничениями). Гарантируется, что возвращаемый указатель будет выровнен на размер 
аллоцируемого участка (т. е. если вы аллоцируете SLAB размером 4Kb, то его адрес будет выровнен на 
границу 4Kb, если 8Kb, то на границу 8Kb и тд).

При реализации вам не обязательно точно следовать рассказанному в видео или описанному в статье 
подходах. Но вы должны учитывать, что, среди прочего, проверяющая система будет оценивать работу 
функции cache_shrink. При оценке проверяющая система будет считать, что если все аллоцированные из 
некоторого SLAB-а объекты были освобождены к моменту вызова cache_shrink, то cache_shrink должен 
освободить этот SLAB. Т. е. другими словами, cache_shrink должен возвращать все свободные SLAB-ы системе.
*/
#include <iostream>  
#include <cstddef>
#include <stdlib.h>                         // posix_memalign(void **memptr, size_t alignment, size_t size);

const int PAGE_SIZE = 4096;
const unsigned MAX_ORDER = 10;              // максимальный порядок сляба
const unsigned MAX_MEMORY = 2000;           // cache max memory size (Mb) На больших объемах надо делать динамический массив указателей, иначе копилятор переставляет стек.

/**
 * Эти две функции вы должны использовать для аллокации
 * и освобождения памяти в этом задании. Считайте, что
 * внутри они используют buddy аллокатор с размером
 * страницы равным 4096 байтам.
 **/

/**
 * Аллоцирует участок размером 4096 * 2^order байт,
 * выровненный на границу 4096 * 2^order байт. order
 * должен быть в интервале [0; 10] (обе границы
 * включительно), т. е. вы не можете аллоцировать больше
 * 4Mb за раз.
 **/
void *alloc_slab(int order)                             
{   
    /* ручной вариант через аллокацию удвоенного объема */
    // std::size_t size = PAGE_SIZE * (1 << order);
    // void *ptr = std::malloc(size * 2 + sizeof(void*));
    // unsigned long long align = ~(((unsigned long long)1 << (12 + order)) - 1);
    // void *aligned_ptr = (void*)((unsigned long long)ptr & align);
    // while ((char*)aligned_ptr < (char*)ptr + sizeof(void*)) {
    //     aligned_ptr = (char*)aligned_ptr + size;
    // }
    // *((void**)aligned_ptr - 1) = ptr; // сохраняем указатель на начало перед выровненной областью

    void *aligned_ptr;
    aligned_ptr =  aligned_alloc(PAGE_SIZE * (1 << order), PAGE_SIZE * (1 << order));
    return aligned_ptr;
}
/**
 * Освобождает участок ранее аллоцированный с помощью
 * функции alloc_slab.
 **/
void free_slab(void *slab)                              
{
    // std::free(*((void**)slab - 1));                  // для ручного выранивания через двойную аллокацию
    free(slab);
}

struct slab_hdr {                   // заголовок сляба
    slab_hdr * next;                // следующий сляб этого же типа (пустой/непустой/полный)
    void * free;                    // первый свободный элемент
    void * start;                   // DEBUG
    unsigned count;                 // счетчик
};

struct cache {
    slab_hdr * empty;       /* список пустых SLAB-ов для поддержки cache_shrink */
    slab_hdr * fill;        /* список частично занятых SLAB-ов */
    slab_hdr * full;        /* список заполненых SLAB-ов */
    
    size_t object_size;     /* размер аллоцируемого объекта */
    int slab_order;         /* используемый размер SLAB-а */
    int slab_objects;       /* макс.количество объектов в одном SLAB-е */ 
};



slab_hdr * new_slab(struct cache *cache)
{
    void * p0 = static_cast<void *> ( alloc_slab(cache->slab_order) );          // аллоцируем память под новый сляб

    slab_hdr * header = (slab_hdr *) ( (char *) p0 + PAGE_SIZE * (1 << cache->slab_order) - sizeof(slab_hdr) );   // указатель на заголовк в хвосте
    header->start = p0;
    header->free = header->start;                                               // ссылка на первый свободный блок

    void ** ptr = (void**)header->free;                                         // временный указатель, которым проходим
    for (int i = 0; i < cache->slab_objects - 1; ++i) {                         // по количеству объектов
        *ptr = (char*)ptr + cache->object_size;                                 // по адресу первого свободного блока - адрес следующего свободного блока
        ptr = (void**)*ptr;                                                     // то же что (void**)*((char*)ptr + cache->object_size); // сдвиг указателя на следующий свободный блок
    }
    *ptr = nullptr;

    header->count = 0;
    header->next = nullptr;
    return header;
}

/**
 * Функция инициализации будет вызвана перед тем, как
 * использовать это кеширующий аллокатор для аллокации.
 * Параметры:
 *  - cache - структура, которую вы должны инициализировать
 *  - object_size - размер объектов, которые должен
 *    аллоцировать этот кеширующий аллокатор 
 **/
void cache_setup(struct cache *cache, size_t object_size)
{
    cache->object_size = object_size;
    size_t min_order = 0;
    while ( (object_size + sizeof(slab_hdr)) > PAGE_SIZE) { object_size >>= 1; min_order++; }        

    cache->slab_order = MAX_ORDER;                                              // вот если тока так 
    cache->slab_objects = PAGE_SIZE * (1 << cache->slab_order) / cache->object_size; // количество объектов в слябе от 1 шт по 4 Мб до 1024 шт. по 4 Кб
    if ((PAGE_SIZE * (1 << cache->slab_order)) % cache->object_size < sizeof(slab_hdr) )
        --cache->slab_objects;                                                  // если заголовок не влезет в паддинг

    cache->fill = new_slab(cache);
    cache->empty = nullptr;                                                     // этих пока нет
    cache->full = nullptr;
}

/**
 * Функция аллокации памяти из кеширующего аллокатора.
 * Должна возвращать указатель на участок памяти размера
 * как минимум object_size байт (см cache_setup).
 * Гарантируется, что cache указывает на корректный
 * инициализированный аллокатор.
 **/
void *cache_alloc(struct cache *cache)
{   
    if (cache->fill) {                                              // если есть незаполненные
        void * res = cache->fill->free;
        cache->fill->count++;
        cache->fill->free = *(void**)(cache->fill->free);           // переставить указатель
        if ( ! cache->fill->free ) {                                // если последний блок - перенести сляб в начало заполненных
            slab_hdr * next_fill = cache->fill->next;
            slab_hdr * full = cache->full;                          
            cache->full = cache->fill;
            cache->full->next = full;  
            cache->fill = next_fill;
        }
        return res;
    } else if (cache->empty) {                                      // если есть пустые
        slab_hdr * fill = cache->fill;                              // перенести в незаполненные
        cache->fill = cache->empty;
        cache->fill->next = fill;
        // как с незаполенныеми
        void * res = cache->fill->free;
        cache->fill->count++;
        cache->fill->free = *(void**)(cache->fill->free);           // переставить указатель
        if ( ! cache->fill->free ) {                                // если последний блок (когда слябы размером 1 блок)
            slab_hdr * next_fill = cache->fill->next;
            slab_hdr * full = cache->full;                          
            cache->full = cache->fill;
            cache->full->next = full;  
            cache->fill = next_fill;
        }
        return res;
    } else                                                          // если нет ни пустых, ни незаполненных
        cache->fill = new_slab(cache);                              // новый незаполненный
        // как с незаполенныеми
        void * res = cache->fill->free;
        cache->fill->count++;
        cache->fill->free = *(void**)(cache->fill->free);           // переставить указатель
        if ( ! cache->fill->free ) {                                // если последний блок (когда слябы размером 1 блок)
            slab_hdr * next_fill = cache->fill->next;
            slab_hdr * full = cache->full;                          
            cache->full = cache->fill;
            cache->full->next = full;  
            cache->fill = next_fill; 
        }
        return res;

    return (void*) nullptr;                                         // что то пошло не так...
}


/**
 * Функция освобождения памяти назад в кеширующий аллокатор.
 * Гарантируется, что ptr - указатель ранее возвращенный из
 * cache_alloc.
 **/
void cache_free(struct cache *cache, void *ptr)
{
    void * start = (void*)( (size_t)ptr & ~(PAGE_SIZE*(1 << cache->slab_order) - 1) );           // занулит мл. i бит в адресе, оставшиеся старшие - начало сляба
    slab_hdr * header = (slab_hdr *) ( (char *) start + PAGE_SIZE * (1 << cache->slab_order) - sizeof(slab_hdr) );
    
    if (header->free) {                                             // это не заполненный сляб      
        void** p = (void**)header->free;
        header->free = ptr;
        *(void**) ptr = p;                                          // по адресу указателя - адрес следующего свободного блока
        --header->count;
        
        // перенос из частичных в пустые
        if ( ! header->count) {                                     // включить в пустые
            slab_hdr * fill = cache->fill;                          // удалить из частичных
            if ((fill == header) && (fill->next))
                cache->fill = header->next;
            else if (fill->next) {                                  // если не последний частичный
                while (fill->next != header)                      
                    fill = fill->next;                              // найти предыдущий
                fill->next = header->next;                          // переключить на следующего
            } else                                                  // если последний частичный
                cache->fill = nullptr;                              // занулить

            slab_hdr * empty = cache->empty;
            header->next = empty;
            cache->empty = header;
        }
    } else {                                                        // это полный сляб
        void** p = (void**)header->free;
        header->free = ptr;
        *(void**) ptr = p;                                          // по адресу указателя - адрес следующего свободного блока
        --header->count;

        // перенос из полных в частичные/пустые
        slab_hdr * full = cache->full;                              // удалить из полных
        if (full == header)
            cache->full = header->next;
        else if (full->next) {                                      // если не последний полный сляб
            while (full->next != header)
               full = full->next;                                   // найти предыдущий
            full->next = header->next;                              // переключить на следующего
        } else                                                      // если последний полный
            cache->full = nullptr;                                  // занулить

        if (header->count) {                                        // включить в частичные
            slab_hdr * fill = cache->fill;
            header->next = fill;
            cache->fill = header;
        } else {                                                    // включить в пустые
            slab_hdr * empty = cache->empty;
            header->next = empty;
            cache->empty = header;
        }
    }
}

/**
 * Функция должна освободить все SLAB, которые не содержат
 * занятых объектов. Если SLAB не использовался для аллокации
 * объектов (например, если вы выделяли с помощью alloc_slab
 * память для внутренних нужд вашего алгоритма), то освбождать
 * его не обязательно.
 **/
void cache_shrink(struct cache *cache)
{
    slab_hdr * empty = cache->empty;

    while (empty)
    {
        void * start = (void *) ((char*)empty + sizeof(slab_hdr) - PAGE_SIZE * (1 << cache->slab_order));
        empty = empty->next;
        free_slab(start);
    }
    cache->empty = nullptr;
}

/**
 * Функция освобождения будет вызвана когда работа с
 * аллокатором будет закончена. Она должна освободить
 * всю память занятую аллокатором. Проверяющая система
 * будет считать ошибкой, если не вся память будет
 * освбождена.
 **/

void _release(struct cache *cache, struct slab_hdr *slab)
{
    while (slab) {
        void * start = (void *) ((char*)slab + sizeof(slab_hdr) - PAGE_SIZE * (1 << cache->slab_order));
        slab = slab->next;
        free_slab(start);
    }
}

void cache_release(struct cache *cache)
{
    _release(cache, cache->empty);
    _release(cache, cache->fill);
    _release(cache, cache->full);
}

/***************************TESTS*******************************/

void show_slabs(struct slab_hdr *slab, struct cache *cache)
{
    while (slab) {
        slab_hdr * header = slab;

        size_t size = cache->slab_objects * cache->object_size;
        void * end = (void*) ((char *) header->start + size);
        size_t pad_size = (size_t) header - (size_t) end;

        std::cout << "  " << header->start << "  " << end << " " << size << "      " 
                  << header << " " << pad_size << "        " << header->count << "/" 
                  << cache->slab_objects << "        " << header->free << "    " 
                  << ((header->free) ? *(void**)header->free : 0) << "\n";                  // для заполненных слябов

        // std::cout << "  __free blocks: ";
        // void * p = header->free;
        // while (p && *(void**)p) {
        //     std::cout << p << " ";
        //     p = *(void**)p;
        // }
        // std::cout << p << "\n";

        slab = header->next;
    }
}

void show_mem_cache(struct cache *cache)
{
    std::cout << "Cache object size: " << cache->object_size << "\n";
    std::cout << "Slab order:        " << cache->slab_order << "\n";
    std::cout << "Slab space:        " << PAGE_SIZE * (1<< cache->slab_order) << "\n";
    std::cout << "Slab capacity:     " << cache->slab_objects << "\n";

    std::cout << "  Payload start   Payload end    Payload size Header         Padding size Count       First free        Next free"<< "\n";
    std::cout << "->Empty slabs:\n";
    show_slabs(cache->empty, cache);

    std::cout << "->Filling slabs:\n";
    show_slabs(cache->fill, cache);

    std::cout << "->Full slabs:\n";
    show_slabs(cache->full, cache);
    std::cout << "\n";
}

int count(struct cache *cache, struct slab_hdr *slab)
{
    int res = 0;
    while (slab) { slab = slab->next; ++res; }
    return res;
}

void check(std::size_t obj_size)
{

    cache * mem_cache = new cache;

    cache_setup(mem_cache, obj_size);
    show_mem_cache(mem_cache);
    void * ptr0 = cache_alloc(mem_cache);
    void * ptr1 = cache_alloc(mem_cache);
    void * ptr2 = cache_alloc(mem_cache);
    void * ptr3 = cache_alloc(mem_cache);
    void * ptr4 = cache_alloc(mem_cache);
    
    show_mem_cache(mem_cache);
    cache_free(mem_cache, ptr3);
    cache_free(mem_cache, ptr0);
    cache_free(mem_cache, ptr2);
    cache_free(mem_cache, ptr1);
    cache_free(mem_cache, ptr4);

    show_mem_cache(mem_cache);

    cache_release(mem_cache);
}

struct Obj {
    char name[6] = {'o','b','j','e','c','t'};
    size_t size = sizeof(name);
    char * data = (&name)[0];
    Obj& operator=(Obj* other) { 
        for (int i=0;i!=6;++i) name[i] = other->name[i];
        size = sizeof(name);
        data = (&name)[0];
        return *this;
    }
};

bool examine_slabs(struct cache *cache)
{   
    // пройти по всем свободным указателям, количество свободных + аллоцированных == размер сляба
    slab_hdr * slab = cache->empty;
    int count = 0;
    while (slab) {
        void * free = slab->free;
        count = 0;
        while (free && ++count) { free = *(void**)free; }
        if (count + slab->count != cache->slab_objects) {
            std::cout << "*** Bad empty slab (ref_count mismatch) ***\n";
            return false;
        }
        slab = slab->next;
    }
    slab = cache->fill;
    while (slab) {
        void * free = slab->free;
        count = 0;
        while (free && ++count) { free = *(void**)free; }
        if (count + slab->count != cache->slab_objects) {
            std::cout << "*** Bad fill slab (ref_count mismatch) ***\n";
            return false;
        }
        slab = slab->next;
    }
    slab = cache->full;
    while (slab) {
        void * free = slab->free;
        count = 0;
        while (free && ++count) { free = *(void**)free; }
        if (count + slab->count != cache->slab_objects) {
            std::cout << "*** Bad full slab (ref_count mismatch) ***\n";
            return false;
        }
        slab = slab->next;
    }

    return true;
}

void test()
{
    std::srand(time(NULL));
    int order[] = {0,1,2,3,4,5,6,7,8,9,10};
    size_t obj_size = 0;

    printf("Cache      Obj_Size                Objects Slabs(e/p/f)             Objects Slabs(e/p/f)              Slabs(e/p/f)             Objects Slabs(e/p/f)\n");

    for (int k = 0; k < 11; ++k) {
        obj_size = 4096 * (1 << order[k]) / (1 + ( std::rand()/(double)RAND_MAX) );     // случайный размер следующего порядка

        cache new_cache;
        cache * mem_cache = &new_cache;
        unsigned TOTAL = MAX_MEMORY * 1024 * 1024 / obj_size;
        void ** objects = (void **)new char* [TOTAL];                                           

        printf("%4d Mb of %7.2f Kb", MAX_MEMORY, obj_size/(double)1024); 

        cache_setup(mem_cache, obj_size);                           // инициализация аллокатора

        for (std::size_t i = 0; i != TOTAL; ++i) {
            objects[i] = cache_alloc(mem_cache);                    // аллокация
            *(Obj*)objects[i] = Obj();                              // заполнение
        }

        int empty = count(mem_cache, mem_cache->empty);
        int fill  = count(mem_cache, mem_cache->fill);
        int full  = count(mem_cache, mem_cache->full);
        printf("->(alloc %s) %7d  %3d(%d/%d/%d)", (examine_slabs(mem_cache))?"OK":" N", TOTAL, empty + fill + full, empty, fill, full);

        for (std::size_t i = 0; i != TOTAL; ++i) {                  // shuffle blocks
            unsigned rnd = (rand()/(double)RAND_MAX*(TOTAL-1));
            void * swp = objects[rnd];
            objects[rnd] = objects[i];
            objects[i] = swp;

            if ( ((Obj*)objects[i])->size != 6)                     // read test
                std::cerr << ((Obj*)objects[i])->size << "Read error!!\n";
        }

        for (std::size_t i = 0; i != TOTAL/2; ++i)
            cache_free(mem_cache, objects[i]);                      // освобождение половины в случайном порядке

        empty = count(mem_cache, mem_cache->empty);
        fill  = count(mem_cache, mem_cache->fill);
        full  = count(mem_cache, mem_cache->full);
        printf("->(free %s) %7d  %3d(%d/%d/%d)", (examine_slabs(mem_cache))?"OK":" N", TOTAL-TOTAL/2, empty + fill + full, empty, fill, full);
        
        cache_shrink(mem_cache);                                    // сжатие кэша
        empty = count(mem_cache, mem_cache->empty);
        fill  = count(mem_cache, mem_cache->fill);
        full  = count(mem_cache, mem_cache->full);                                  
        printf("->(shrink %s) %3d(%d/%d/%d)",(examine_slabs(mem_cache))?"OK":" N",  empty + fill + full, empty, fill, full);

        for (std::size_t i = TOTAL/2; i != TOTAL - TOTAL/4; ++i)
            cache_free(mem_cache, objects[i]);                      // освобождение еще четверти в случайном порядке
        
        empty = count(mem_cache, mem_cache->empty);
        fill  = count(mem_cache, mem_cache->fill);
        full  = count(mem_cache, mem_cache->full);
        printf("->(free %s) %7d  %3d(%d/%d/%d)", (examine_slabs(mem_cache))?"OK":" N", TOTAL/4, empty + fill + full, empty, fill, full);   

        cache_release(mem_cache);                                   // выключение непустого кеша
        printf("->(release) \n");

        delete[] objects;
    }
}

int main()
{
    test();

    return 0;
}