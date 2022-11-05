#include <iostream>  

// Эта функция будет вызвана перед тем как вызывать myalloc и myfree
// используйте ее чтобы инициализировать ваш аллокатор перед началом
// работы.
// 
// buf - указатель на участок логической памяти, который ваш аллокатор
//       должен распределять, все возвращаемые указатели должны быть
//       либо равны NULL, либо быть из этого участка памяти
// size - размер участка памяти, на который указывает buf


void * GLOBAL_HEAD_PTR;

// #pragma pack(push, 1)        // уберет 3 байта выравнивания в bool (не особо много) 
                                // битовые поля могут убрать еще один байт (если отщепить бит от поля size:31 для поля free:1)
                                // можно ли избавиться от указателей - интуитивно кажется, что можно, но не стоит:
                                // они быстрые, считать каждый раз смещения для перехода к следующему блоку скорее всего выйдет 
                                // намного дольше, а экономия памяти с учетом использования граничных маркеров будет вообще никакая...
                                // ВЫВОД: в указателях сила, оставляем как есть
struct Block
{
    unsigned size;              // 4 bytes
    bool free;                  // 4 bytes
    Block * next;               // 8 bytes (64-bit ptr)
    Block * prev;               // 8 bytes
};                              // 24 bytes = 0x18
// #pragma pop

void mysetup(void* buf, std::size_t size)
{   
    GLOBAL_HEAD_PTR = buf;
    Block * blk = static_cast<Block *>(buf);   // blk - переменная-указатель на тип Block, указывает на адрес buf

    // по ссылкам на поля присваиваем значения 0 блока
    blk->size = size - sizeof(Block);          // sizeof(*blk) - без разницы, ведь все размеры вычисляются на этапе компиляции ...
    blk->free = true;                          // ... чтоб не перепутать, лучше брать экземпляр, для смысла и читабельности, лучше тип
    blk->next = NULL;
    blk->prev = NULL;
}

// Функция аллокации
void* myalloc(std::size_t size)
{   
    Block * blk = static_cast<Block *>(GLOBAL_HEAD_PTR);    // указатель на начало списка
    
    // найти свободный блок размера >= size + header
    while ( !(blk->free) || ( blk->size < (size + sizeof(Block)) ) ) 
    {                                                               
        if (blk->next == NULL) 
            return NULL;                                    // таких нету
        else 
            blk = blk->next;
    }
    if (!(blk->free) || (blk->size < (size + sizeof(Block))) )
        return NULL;                                        // таких нету, и корневой не подходит

    // в конце свободного блока создать блок размера size и выдать указатель
    char * ptr = (char *) blk;                              // байтовый указатель
    ptr = ptr + blk->size - size;                           // нашли место в блоке
    // создаем новый блок - по ссылкам на поля присваиваем значения нового блока
    ((Block *)ptr)->size = size;                           
    ((Block *)ptr)->free = false;                           // занято
    ((Block *)ptr)->next = blk->next;                       // следующий = следующий родительского (или NULL)
    ((Block *)ptr)->prev = blk;                             // предыдущий = родительский
    // обновляем следующий
    if (blk->next)
        blk->next->prev = (Block *)ptr;                     // предыдущий следующего = новый
    // обновляем родительский
    blk->next = (Block *)ptr;                               // следующий родительского = новый
    blk->size = blk->size - size - sizeof(Block);           // размер уточнили

    return static_cast<void *>(ptr + sizeof(Block));        // общая ссылка на "после заголовка блока"
}

// Функция освобождения
void myfree(void *p)
{   
    if (!p)  return;                                        // если ссылка пустая 

    Block * blk = static_cast<Block *> (p);                 // указатель на свободное место, тип Block *
    blk = blk - 1;                                          // указатель на блок-контейнер

    if (blk->free)                                          // если блок уже свободен
        return;

    // дефрагментация - проверка следующего (присоединяем к себе)
    if ( (blk->next) && (blk->next->free) ) {       
        blk->size += blk->next->size + sizeof(*blk);        // сначала данные (!)
        blk->next = blk->next->next;                        // потом ссылка
        if (blk->next)                                      // (!)
            blk->next->prev = blk;
    }
    // дефрагментация - проверка предыдущего (присоединяемся к нему)
    if ( (blk->prev) && (blk->prev->free) ) {
        blk->prev->size += blk->size + sizeof(*blk);
        if (blk->next)                                      // (!) внимательно с указателями
            blk->next->prev = blk->prev;
            blk->prev->next = blk->next;
    }
        
    blk->free = true;
}

void show_memory()
{
    Block * blk = static_cast<Block *>(GLOBAL_HEAD_PTR);    // указатель на начало списка
    int total_mem       = 0;
    int total_system    = 0;
    int total_allocable = 0;
    int total_free      = 0;

    printf(    "      Addr       Headsize   Blocksize  Allocated       Next            Prev\n");
    while (blk != NULL) 
    {
        printf("%p %10ld  %10d          %s %15p %15p\n", blk, sizeof(*blk), blk->size, blk->free ? " " : "*", blk->next, blk->prev);
        total_mem += (sizeof(Block) + blk->size);
        total_system += sizeof(Block);        
        total_allocable += blk->size;
        if (blk->free)
            total_free += blk->size;

        blk = blk->next;        
    }

    printf("Tot/sys/allocable: %d / %d / %d bytes\n", total_mem, total_system, total_allocable);
    printf("Total free: %d bytes\n\n", total_free);
}

unsigned get_max_size()
{
    Block * blk = static_cast<Block *>(GLOBAL_HEAD_PTR);   // указатель на начало списка
    unsigned max_size = 0; 
    while (blk != NULL) {
        if ( (blk->free) && (blk->size > max_size) )
            max_size = blk->size;
        blk = blk->next;
    }
    return max_size;
}

unsigned get_eff_size ()
{   
    Block * blk = static_cast<Block *>(GLOBAL_HEAD_PTR);   // указатель на начало списка
    unsigned eff_size = 0; 
    while (blk != NULL) {
        if (blk->free)
            eff_size += blk->size -sizeof(Block);
        blk = blk->next;
    }
    return eff_size;
}

unsigned get_fragments ()
{   
    Block * blk = static_cast<Block *>(GLOBAL_HEAD_PTR);   // указатель на начало списка
    unsigned fragments = 0; 
    while (blk != NULL) {
        fragments++;
        blk = blk->next;
    }
    return fragments;
}

void check ()
{
    std::size_t total_memory_size = 512+24;

    void * head = malloc(total_memory_size);
    mysetup(head, total_memory_size);
    
    printf("Head ptr: %p\n", head);
    show_memory();
    void * ptr = myalloc(79);
    void * ptr1 = myalloc(20);
    void * ptr2 = myalloc(50);
    void * ptr3 = myalloc(50);
    void * ptr4 = myalloc(32+51);
    
    show_memory();
    myfree(ptr1);
    myfree(ptr3);
    myfree(ptr);
    myfree(ptr4);
    myfree(ptr2);
    show_memory();  
}


void test()
{
    std::srand(time(NULL));
    unsigned mem_size = std::rand() % (1024*1024) + (100 * 1024);   // 100Kb..1Mb
    unsigned block_size [10] = {16, 32, 64, 96, 128, 256, 512, 1024, 4096, 8192};
    void * ptrs [65536];                                            // =1024*1024/16

    void * head = malloc(mem_size);
    mysetup(head, mem_size);

    printf("Allocable mem_size: %d\n", mem_size);

    for (int k=0; k<10; ++k) {
        printf("test %2d: ", k + 1);
        int i = 0;
        while (i < 65536) {
            ptrs[i] = myalloc(block_size[k]);
            if(ptrs[i] == NULL) {
                printf("( mem full ) ");
                break;
            }
            i++;
        }
        printf(" %5d blocks of %4d bytes =>", get_fragments(), block_size[k]);

        for(int j = 0; j < i; ++j) {                        // shuffle blocks
            unsigned rnd = (rand()/(double)RAND_MAX*(i-1));
            void * swp = ptrs[rnd];
            ptrs[rnd] = ptrs[j];
            ptrs[j] = swp;
        }
        for(int j = 0; j < i; ++j) {
            myfree(ptrs[j]);
        }
        printf(" ( mem free ) Fragments=%5d, MaxSize=%7d, EffectiveSize=%7d\n", get_fragments(), get_max_size(), get_eff_size());
    }
}

int main() 
{   
    // check();
    test();

    return 0;
}

// 14.05.2021 я узнал о том, что:
// Разыменовать void * напрямую не получится! Вам сначала нужно будет явно преобразовать указатель типа void 
// с помощью оператора static_cast в другой тип данных, а затем уже его разыменовать.