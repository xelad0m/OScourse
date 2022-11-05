#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include <stdio.h>

#define FIFO "myfifo"

int main()
{
	mknod(FIFO, S_IFIFO | 0666, 0);					// созать именованный канал (fifo) (м.б. уже создан - так что ОК)

	printf("Wait for a writer...\n");
	int fd = open(FIFO, O_RDONLY);
	printf("A writer connected, receiving...\n");	// открыть канал по имени как обычный файл (на запись) - блокирует данный поток до открытия на другой стороне
	int size;
	char buf[4096];

	while ((size = read(fd, buf, sizeof(buf) - 1)) > 0) {	// читает канал
		buf[size] = '\0';
		printf("Received: %s\n", buf);
	}

	return 0;
}
