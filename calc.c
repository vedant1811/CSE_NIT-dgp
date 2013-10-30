#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>
#define buffsize 20
int main()
{
int fd[2], res, op1, op2;
char opr, line[buffsize];
pipe(fd);
if(fork()==0)
{
      close(fd[1]);
      read(fd[0], line, buffsize);
     scanf(line,"%d%c%d", &op1, &opr, &op2);
      switch(opr)
    {
        case '+' res = op1+op2; break;
        case '-' res = op1-op2; break;
        case '*' res = op1*op2; break;
        case '/' res = op1/op2; break;
    }
    printf("result %d", res);
}
else
{
     close(fd[0]);
     gets(line);	
     write(fd[1], line, buffsize);
}
return 0;
}