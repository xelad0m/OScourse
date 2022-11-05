/* В это задании вам нужно для ELF файла найти все его program header-ы, которые описывают 
участки памяти (p_type == PT_LOAD), и посчитать, сколько места в памяти нужно, 
чтобы загрузить программу. */

#include <iostream>             // раз тут используются пространства имен (std::) то значит это С++ ??
#include <fstream>      		// ifstream
#include <unistd.h>             // системные вызовы ОС (sleep)

#define ELF_NIDENT	16          // отступ на размер e_ident (первые 4 байта которого это magic number 177 105 114 106)
                                // однозначно определяет, что перед нами ELF файл
                                // $ od -c -N 16 /home/user1/projects/stepik.org/OS/5.Userspace/main
                                // 0000000 177   E   L   F 002 001 001  \0  \0  \0  \0  \0  \0  \0  \0  \0
                                // 0000020

// program header-ы такого типа нужно загрузить в
// память при загрузке приложения
#define PT_LOAD		1

// структура заголовка ELF файла
struct elf_hdr {
	std::uint8_t e_ident[ELF_NIDENT];
	std::uint16_t e_type;
	std::uint16_t e_machine;
	std::uint32_t e_version;
	std::uint64_t e_entry;
	std::uint64_t e_phoff;          // где в файле начинается таблица
	std::uint64_t e_shoff;
	std::uint32_t e_flags;
	std::uint16_t e_ehsize;
	std::uint16_t e_phentsize;      // размер записи в таблице
	std::uint16_t e_phnum;          // сколько записей в таблице
	std::uint16_t e_shentsize;
	std::uint16_t e_shnum;
	std::uint16_t e_shstrndx;
} __attribute__((packed));

// структура записи в таблице program header-ов
struct elf_phdr {
	std::uint32_t p_type;
	std::uint32_t p_flags;
	std::uint64_t p_offset;
	std::uint64_t p_vaddr;
	std::uint64_t p_paddr;
	std::uint64_t p_filesz;
	std::uint64_t p_memsz;
	std::uint64_t p_align;
} __attribute__((packed));


std::uintptr_t entry_point(const char *name)
{
	// Ваш код здесь, name - имя ELF файла.
	struct elf_hdr hdr;

	std::ifstream ifile(name, std::ios::binary); 					// входной файл (когда выйдет из области видимости, деструктор закроет файл)
																	// читать в двоичном режиме (openmode)
	ifile.read(reinterpret_cast<char*>(&hdr), sizeof hdr);			// куда читать - привести к типу нашей структуры, сколько прочитать
    return reinterpret_cast<std::uintptr_t>(hdr.e_entry);			// работает и без приведения типа uint64_t -> uintptr_t
}																	// бывает (наверно), что указатель может быть меньше разрядности системы, поэтому uintptr_t
																	// теоретически может быть меньше uint64_t (можно использовать 48 битный указатель для 64 системы, 
																	// если нам не нужно все вирт.адр.прост. - стандарт разрешает) поэтому лучше кастануть 
																	// (например в стиле С++ как тут)
																	// *) говорят, смысл unitpr_t, что в отличие от указателей с ним можно делать побитовые операции
void prnt_elf_load_recs(const char *name)
{   
    /* прочитаем заголовок */
    struct elf_hdr hdr;
    std::ifstream ifile(name, std::ios::binary);
    ifile.read(reinterpret_cast<char*>(&hdr), sizeof hdr);

    /* прочитаем записи в таблице программных заголовков */
    struct elf_phdr phdrs[100];

    ifile.seekg(hdr.e_phoff, std::ios::beg);                        // указатель на начало таблице в фале (смещение в размере e_phoff)

    std::cout << "\np_offset(hex) " << "p_vaddr(hex) " << "p_paddr(hex) " << "p_filesz(bytes) "
	          << "p_memsz(bytes) " << "p_align(bytes)" << std::endl;

    for (uint16_t i=0; i != hdr.e_phnum; ++i) 
    {
        ifile.read(reinterpret_cast<char*>(&phdrs[i]), hdr.e_phentsize);
        if (phdrs[i].p_type == PT_LOAD) 
            std::cout << "PT_LOAD:  " 
                      << std::hex << "0x" << phdrs[i].p_offset << ' '
	                  << std::hex << "0x" << phdrs[i].p_vaddr << ' '
	                  << std::hex << "0x" << phdrs[i].p_paddr << ' '
	                  << std::dec << phdrs[i].p_filesz << ' '
	                  << std::dec << phdrs[i].p_memsz << ' '
	                  << std::dec << phdrs[i].p_align << ' '
                      << std::endl; 
    }

}

std::size_t space(const char *name)
{
    std::size_t mem = 0;
    /* прочитаем заголовок */
    struct elf_hdr hdr;
    std::ifstream ifile(name, std::ios::binary);
    ifile.read(reinterpret_cast<char*>(&hdr), sizeof hdr);

    /* прочитаем записи в таблице программных заголовков */
    struct elf_phdr phdrs[100];
    ifile.seekg(hdr.e_phoff, std::ios::beg);                        // указатель на начало таблице в фале (смещение в размере e_phoff)
    for (uint16_t i=0; i != hdr.e_phnum; ++i) {
        ifile.read(reinterpret_cast<char*>(&phdrs[i]), hdr.e_phentsize);
        if (phdrs[i].p_type == PT_LOAD) 
            mem += phdrs[i].p_memsz;
    }
    return mem;
}

int main()
{
	const char *elf_file_name = "/home/user1/projects/stepik.org/OS/5.Userspace/main";
	std::cout << "File name: " << elf_file_name << std::endl;
    std::cout << "Entry point (dec): " 
			  << entry_point(elf_file_name) << std::endl;			// вывод в дес.формате (в readelf 0x...)
 	std::cout << "Entry point (hex): 0x" << std::hex 
	 		  << entry_point(elf_file_name) << std::endl;			// типа так

    prnt_elf_load_recs(elf_file_name);

    std::cout << "\nMEMORY need (bytes, except alignment): " << std::dec
	 		  << space(elf_file_name) << std::endl;			// типа так
    // 3125 байт суммарный размер 4 секций в файле. Как ОС разметит это дело? Скорее всего на 4 блока с выравниванием по 4096 байт (4 сляба)
    // т.е. реально скушается 4*4096 байт 
    // А в диспетчере 160 Кб ... ???

    sleep(10000);
    return 0;
}