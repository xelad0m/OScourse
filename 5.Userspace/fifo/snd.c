#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h> 		//	
#include <unistd.h>

#include <stdio.h>

#define FIFO "myfifo"

int main()
{
	/*Системный вызов mknod создат запись inode в файловой системе (обычный файл, файл устройства 
	или именованый канал  S_IFIFO) с именем pathname, с атрибутами, определяемыми параметрами mode и dev. */
	mknod(FIFO, S_IFIFO | 0666, 0);							// созать именованный канал (fifo) (м.б. уже создан - и это ОК)

	printf("wait for a reader...\n");
	int fd = open(FIFO, O_WRONLY);							// открыть канал по имени как обычный файл (на запись) - блокирует данный поток до открытия на другой стороне
	printf("A reader connected, sending...\n");
	int size;
	char buf[4096];

	while ((size = read(0, buf, sizeof(buf) - 1)) > 0) {	// читает стд. ввод
		buf[size] = '\0';
		printf("Send: %s\n", buf);
		write(fd, buf, size);								// пишет в канал через буфер
	}

	return 0;
}
