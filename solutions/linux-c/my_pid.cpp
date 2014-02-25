#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main (int argc, char *argv[]){

  printf("My Process ID is: %d\n", (int) getpid());
  printf("My parent Process ID is: %d\n", (int) getppid());

  return EXIT_SUCCESS;
}
