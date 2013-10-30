#include <sys/wait.h>
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include<file.h>
#include <unistd.h>
#include <string.h>
main()
{
  int fd[2];
  pipe(fd);
  char buffer[100];
  int size=100;
  pid_t pid;
  pid=fork();
  if(pid==-1)
  {
    printf("The chlid can't be created");
  }
  if(pid==0)
  {
    close(fd[1]);
    read(fd[0],buffer,size);
    fwrite(buffer
   }
  else
  {
    gets(buffer);
    char data[100];
    char data[0]=fread(buffer);
    write(fd[1],data,100);
    close(fd[1]);
}