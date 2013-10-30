#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
int main()
{
  pid_t pid;
  int count=0;
  while(1)
  {
    pid=fork();
    if(pid==0)
	break;
    else if(pid<0)
    {
	printf("\nMax number of child processes: %d\n",count);
	return 0;
    }
    count++;
  }
}
