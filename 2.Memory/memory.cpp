// хоть циферки и правильные, но ЧУДОВО МЕДЛЕННО, прям ух ...
// проблема не в записи endl ...
// -> /home/user1/projects/stepik.org/OS/2.Memory/memory_ref.cpp

#include <iostream>     // cin, cofile
#include <string>       // подключаем строки
#include <sstream>      // stringstream строка как поток типа того (для сплита)
#include <vector>       // вектор
#include <map>          // map (словарь)
#include <fstream>      // ifstream

using namespace std;    

vector<string> split(const string s, char delim) {
    vector <string> elems;
    stringstream ss;
    ss.str(s);
    string item;
    while (getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems;
}

void p_laddr(uint64_t laddr, uint64_t l_struct[])
{
    l_struct[0] = (laddr >> 39) & 0x1ff;        // младшие 9 бит (маске 0x1ff = 0b111111111) у сдвинутого вправо на 39 бит значения
    l_struct[1] = (laddr >> 30) & 0x1ff;        // ... на 39 бит значения
    l_struct[2] = (laddr >> 21) & 0x1ff;        // ...
    l_struct[3] = (laddr >> 12) & 0x1ff;        // ...
    l_struct[4] = laddr & 0xfff;                // и по маске 0xfff (12 единиц или 0b111111111111), т.е. результат - младшие 12 бит
}

uint64_t get_paddr(uint64_t laddr, map <uint64_t, uint64_t> mem_struct, uint64_t cr3)
{   
    uint64_t value = cr3;
    uint64_t index;
    uint64_t l_struct[5];
    p_laddr(laddr, l_struct);

    for (int i = 0; i < 4; i++) {
        index = l_struct[i] * 8;
        value = mem_struct[value + index];                                  // по умолчанию 0 (то что надо)
        
        if ((value & 1) == 0) 
            return 0;
        
        value = value & (0xffffffffff << 12);
    }

    return value + l_struct[4];
}

int main() 
{   
    string s;                                                               // строка - буфер чтения
    ifstream ifile("/home/user1/projects/stepik.org/OS/2.Memory/dataset_44327_15.txt"); // входной файл (когда выйдет из области видимости, деструктор закроет файл)
    ofstream ofile("/home/user1/projects/stepik.org/OS/2.Memory/ofile.txt");            // выходной файл
    
    map <uint64_t, uint64_t> mem_struct;                                    // словарь того, что в "памяти"
    
    uint64_t laddr;
    uint64_t paddr;

    
    getline(ifile, s);                                                  // первая строка
    vector<string> inits = split(s, ' ');                               // сплит по пробелу
    int mem_rows = stoi(inits[0]);
    int queries = stoi(inits[1]);
    uint64_t cr3 = stoull(inits[2]);                                    // физ.адрес корневой таблицы страниц

    // заполнение "памяти"
    for (int i = 0; i < mem_rows; i++) {
        getline(ifile, s);          
        vector<string> mems = split(s, ' ');                            // сплит по пробелу
        mem_struct[stoull(mems[0])] = stoull(mems[1]);
    };

    // обработка запросов
    for (int i = 0; i < queries; i++) {
        getline(ifile, s);
        laddr = stoull(s);
        paddr = get_paddr(laddr, mem_struct, cr3);                      
        if (paddr != 0)
            ofile << paddr << std::endl;
            // std::cout << paddr << std::endl;
        else
            ofile << "fault" << std::endl;
            // std::cout << "fault" << std::endl;
        //Интересный нюанс: Поскольку std::endl; также очищает выходной поток, то его чрезмерное использование (приводящее к ненужным 
        //очисткам буфера) может повлиять на производительность программы (так как очистка буфера в некоторых случаях может быть
        //затратной операцией). По этой причине программисты, которые заботятся о производительности своего кода, часто 
        //используют \n вместо std::endl для вставки символа новой строки в выходной поток, дабы избежать ненужной очистки буфера.
    };
    ofile << flush;
    
    return 0;
}
