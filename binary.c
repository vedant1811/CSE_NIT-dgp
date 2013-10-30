#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
int main()
{
	int level;
	printf("Start %d\n", (int)getpid());
	for(level=0; level<2; level++)
	{
		if(fork()==0 || fork()==0)
			continue;
		break;
	}
	printf("I am %d, my parent is %d\n", (int)getpid(), (int)getppid());
	while(wait(0) > 0)
	;
	return(0);
}
