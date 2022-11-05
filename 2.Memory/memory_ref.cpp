// Итак - причина медленной работы - передача словаря map по значению в функцию, он копируются каждый вызов.

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

struct Log_address {                                // для начала - переделаем из массива с передай по значению в функцию для заполнения
    Log_address(uint64_t laddr)                     // ... в структуру с конструктором c параметром
    {
        fields[0] = (laddr >> 39) & 0x1ff;        // младшие 9 бит (маске 0x1ff = 0b111111111) у сдвинутого вправо на 39 бит значения
        fields[1] = (laddr >> 30) & 0x1ff;        // ... на 39 бит значения
        fields[2] = (laddr >> 21) & 0x1ff;        // ...
        fields[3] = (laddr >> 12) & 0x1ff;        // ...
        fields[4] = laddr & 0xfff; 
    }
    unsigned fields[5];                             // unsigned (32 бита) с лихвой достаточно
};


uint64_t get_paddr(uint64_t laddr, map <uint64_t, uint64_t> * mem_struct, uint64_t cr3)     // указатель на map (не ссылка)
{   
    uint64_t value = cr3;
    unsigned index;
    Log_address l = laddr;                    // скорости это не прибавило, просто стало посимпатичнее

    for (int i = 0; i < 4; i++) {
        index = l.fields[i] * 8;
        value = (*mem_struct)[value + index];                               // разыменовывается уот так уот
        
        if ((value & 1) == 0) 
            return 0;
        
        value = value & (0xffffffffff << 12);
    }

    return value + l.fields[4];
}

int main() 
{   
    string s;                                                               // строка - буфер чтения

    ifstream ifile("/home/user1/projects/stepik.org/OS/2.Memory/dataset_44327_15.txt"); 
    ofstream ofile("/home/user1/projects/stepik.org/OS/2.Memory/ofile.txt");            
    
    map <uint64_t, uint64_t> mem_struct;                                    // словарь того, что в "памяти"
    typedef pair <uint64_t, uint64_t> PAIR;                                 // пара для словаря, если не использовать make_pair
    
    uint64_t laddr;
    uint64_t paddr;

    
    getline(ifile, s);                                                  
    vector<string> inits = split(s, ' ');                               
    int mem_rows = stoi(inits[0]);
    int queries = stoi(inits[1]);
    uint64_t cr3 = stoull(inits[2]);                                    

    // заполнение "памяти"
    for (int i = 0; i < mem_rows; i++) {
        getline(ifile, s);          
        vector<string> mems = split(s, ' ');          
        // mem_struct[stoull(mems[0])] = stoull(mems[1]);
        mem_struct.insert(make_pair(stoull(mems[0]), stoull(mems[1])));     // на 7% быстрее
        // mem_struct.insert( PAIR(stoull(mems[0]), stoull(mems[1])));         // тоже самое, что и make_pair
    };

    // обработка запросов
    for (int i = 0; i < queries; i++) {
        getline(ifile, s);
        laddr = stoull(s);
        paddr = get_paddr(laddr, &mem_struct, cr3);                         // передаваем не словарь, а адрес словаря
        if (paddr != 0)
            ofile << paddr << "\n";
            // cout << paddr << endl;
        else
            ofile << "fault" << "\n";
            // cout << "fault" << endl;

    };
    ofile << flush;
    
    return 0;
}
