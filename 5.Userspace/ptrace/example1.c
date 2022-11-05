#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/user.h>
#include <sys/reg.h>
#include <unistd.h>

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/* запускаем другое приложение и следим за его системными вызовами 
- типа очень упрощенной версии strace */
int main(int argc, char **argv)					// сишный вариант обработки аргументов ком.строки
{
	if (argc < 2) {
		printf("command name expected\n");
		return -1;
	}

	const pid_t pid = fork();					// форкаемся, потомок запускает приложения, родитель следит за системными вызовами

	if (pid < 0) {
		printf("fork failed\n");
		return -1;
	}

	if (!pid) {									// потомок
		char **args = calloc(argc, sizeof(char *));
		int i;

		for (int i = 0; i != argc - 1; ++i)
			args[i] = argv[i + 1];

		ptrace(PTRACE_TRACEME, 0, NULL, NULL);	// разрешаем родительскому процессу следить за нами (PTRACE_TRACEME), т.е. изменяем состояние этого потока
		if (execvp(args[0], args) == -1) {		// запускаем приложение, преданное в аргументе ком.строки
			printf("exec failed\n");
			return -1;
		}
		/* unreachable */
		return 0;
	}

	int status;

	waitpid(pid, &status, 0);					// родитель (дожидается окончания дочернего процесса, но вообще не окончания, а изменения состояния, которым будет работа сискола ptrace)
	while (!WIFEXITED(status)) {				// проверим как изменилось его состояние, если status != 0 то изменение состояния это не выход, а работа ptrace в дочернем процессе
		unsigned long rax;

		ptrace(PTRACE_SYSCALL, pid, 0, 0);		// запускает поток, за которым мы следим до момента первого сискола (PTRACE_SYSCALL) и тормозим его
		waitpid(pid, &status, 0);				// дождались остановки дочернего по причине вызова сискола

		if (!WIFSTOPPED(status))				// пропускаем какие-то другие остановки
			continue;

		rax = ptrace(PTRACE_PEEKUSER, pid,		// получаем значение RAX вот таким хатрым образом (8 * ORIG_RAX это так обозначается RAX)
					8 * ORIG_RAX, NULL);
		printf("syscall %lu\n", rax);
		ptrace(PTRACE_SYSCALL, pid, 0, 0);		// даем дочернему процессу отработать до выхода из системного вызова
		waitpid(pid, &status, 0);				// и так в цикле до завершения процесса
	}

	return 0;
}
