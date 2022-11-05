#include <stdio.h>
#include <unistd.h>	// все биндинги POSIX системных вызовов тут


int main()
{
	const pid_t pid = fork();					// только fork возвращает 0 для потомков (только так их можно отличить в коде)

	if (pid < 0) {
		printf("fork failed\n");
		return -1;
	}

	if (pid)
		printf("%d: I'm your father %d\n",
			(int)getpid(), (int)pid);
	else
		printf("%d: Noooooo!!!\n",
			(int)getpid());						// потом в потомке можно получить реальный присвоенный pid

	return 0;
}
