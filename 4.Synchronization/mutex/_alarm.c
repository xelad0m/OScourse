
#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <time.h>

#include <signal.h>
#include <unistd.h>

static const unsigned TIMESLICE = 5;                // квант времени для работы потока (в тиках (прерываниях))
static int TIKS_LEFT = 0;  

enum thread_state {
	THREAD_ACTIVE,
	THREAD_BLOCKED,
	THREAD_FINISHED,
	THREAD_DEAD
};


void schedule()
{
    if (!TIKS_LEFT) {
        TIKS_LEFT = TIMESLICE;
        printf("-> round -> ");
    }
}

void interrupt(int unused)
{
	(void) unused;
    --TIKS_LEFT;
    
	alarm(1);										// через секунду - организовать еще одно "прерывание"
	printf("interrupt\n");
	schedule();
}

enum thread_state state = THREAD_ACTIVE;

int main()
{
    printf("%d\n", state);

    TIKS_LEFT = TIMESLICE;

	/* Setup and start an "interrupt" handler */
    struct sigaction action;

	action.sa_handler = &interrupt;
	action.sa_flags = SA_NODEFER;
	sigaction(SIGALRM, &action, NULL);	
    alarm(1);


    while(1);

    return 0;
}