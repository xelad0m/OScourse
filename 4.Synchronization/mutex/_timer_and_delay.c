#include <signal.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>

#include <time.h>

volatile sig_atomic_t print_flag = true;
static int count = 0;

void timer_handler (int signum)
{

 printf ("timer expired %d times\n", ++count);
 if(count>20) {
    print_flag = false;
 } 
}

unsigned long long timespec2ms(const struct timespec *spec)
{ return (unsigned long long)spec->tv_sec * 1000 + spec->tv_nsec / 1000000; }

unsigned long long now(void) {
	struct timespec spec;
	clock_gettime(CLOCK_MONOTONIC, &spec);
	return timespec2ms(&spec);
}

void delay(unsigned long long ms) {	
	const unsigned long long start = now();
	printf("interval= %lld, start=%lld\n", ms, start);
	while (now() - start < ms); 
}

int main ()
{	
	struct sigaction sa;
	struct itimerval timer;

	/* Install timer_handler as the signal handler for SIGVTALRM. */
	memset (&sa, 0, sizeof (sa));
	sa.sa_handler = &timer_handler;
	sigaction (SIGALRM, &sa, NULL);

	/* Configure the timer to expire after 250 msec... */
	memset (&timer, 0, sizeof (timer));
	timer.it_value.tv_sec = 0;
	timer.it_value.tv_usec = 250000;
	/* ... and every 250 msec after that. */
	timer.it_interval.tv_sec = 0;
	timer.it_interval.tv_usec = 250000;
	/* Start a virtual timer. It counts down whenever this process is
	executing. */
	setitimer (ITIMER_REAL, &timer, NULL);

	int d = 500;
	for (int i=0; i!=10; ++i) {
		delay(d);
		printf("delayed %d ", d);
	}

	/* Do busy work. */
	while (print_flag) { sleep(1); }
	
	printf("job done bye bye\n");
    exit(0);

}