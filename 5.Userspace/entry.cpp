/* Напишите функцию, которая по заданному имени ELF файла возвращает адрес точки входа. */

#include <iostream>
#include <fstream>      		// ifstream

#define ELF_NIDENT	16          // отступ на размер e_ident (первые 4 байта которого это magic number 177 105 114 106)
                                // однозначно определяет, что перед нами ELF файл
                                // $ od -c -N 16 /home/user1/projects/stepik.org/OS/5.Userspace/main
                                // 0000000 177   E   L   F 002 001 001  \0  \0  \0  \0  \0  \0  \0  \0  \0
                                // 0000020

// Эта структура описывает формат заголовока ELF файла
struct elf_hdr {
	std::uint8_t e_ident[ELF_NIDENT];
	std::uint16_t e_type;
	std::uint16_t e_machine;
	std::uint32_t e_version;
	std::uint64_t e_entry;
	std::uint64_t e_phoff;
	std::uint64_t e_shoff;
	std::uint32_t e_flags;
	std::uint16_t e_ehsize;
	std::uint16_t e_phentsize;
	std::uint16_t e_phnum;
	std::uint16_t e_shentsize;
	std::uint16_t e_shnum;
	std::uint16_t e_shstrndx;
} __attribute__((packed));


std::uintptr_t entry_point(const char *name)
{
	// Ваш код здесь, name - имя ELF файла.
	struct elf_hdr hdr;

	std::ifstream ifile(name, std::ios::binary); 					// входной файл (когда выйдет из области видимости, деструктор закроет файл)
																	// читать в двоичном режиме
	ifile.read(reinterpret_cast<char*>(&hdr), sizeof hdr);			// куда читать - привести к типу нашей структуры, сколько прочитать
    return reinterpret_cast<std::uintptr_t>(hdr.e_entry);			// работает и без приведения типа uint64_t -> uintptr_t
}																	// бывает (наверно), что указатель может быть меньше разрядности системы, поэтому uintptr_t
																	// теоретически может быть меньше uint64_t (можно использовать 48 битный указатель для 64 системы, 
																	// если нам не нужно все вирт.адр.прост. - стандарт разрешает) поэтому лучше кастануть 
																	// (например в стиле С++ как тут)
																	// *) говорят, смысл unitpr_t, что в отличие от указателей с ним можно делать побитовые операции

int main()
{
	const char *elf_file_name = "/home/user1/projects/stepik.org/OS/5.Userspace/main";
	std::cout << "File name: " << elf_file_name << std::endl;
    std::cout << "Entry point (dec): " 
			  << entry_point(elf_file_name) << std::endl;			// вывод в дес.формате (в readelf 0x...)
 	std::cout << "Entry point (hex): 0x" << std::hex 
	 		  << entry_point(elf_file_name) << std::endl;			// типа так
    return 0;
}