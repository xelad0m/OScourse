#include <sys/types.h>
#include <sys/shm.h>
#include <getopt.h>
#include <unistd.h>
#include <fcntl.h>

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

/* ОС держит этот участок и после завершения приложения, потом опять можно подключиться и все сохраниться */

int main(int argc, char **argv)
{
	const key_t id = 3148;
	const int size = 4096;
	const int fd = shmget(id, size, 0666 | IPC_CREAT);	// выделить память (id - любой условно уникальный, 0666 | IPC_CREAT - права доступа и тип участка)

	if (fd < 0) {
		printf("shmget failed\n");
		return -1;
	}

	void *ptr = shmat(fd, (void *)0, 0);				// по дескриптору создает указатель (с желаемым типом (void *))

	if (ptr == (void *)-1) {
		printf("shmat failed\n");
		return -1;
	}

	char c;
	while ((c = getopt(argc, argv, "p:g")) != -1) {		// 
		switch (c) {
		case 'p':
			strcpy(ptr, optarg);		// пишет в участок памяти
			break;
		case 'g':
			puts(ptr);					// выводит на экран символ по указателю
			break;
		}
	}
	shmdt(ptr);

	return 0;
}
