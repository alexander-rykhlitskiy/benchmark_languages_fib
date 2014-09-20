#include <stdio.h>
#include <stdlib.h>

int fib(int x){
  if(x < 2) {
    return x;
  } else {
    return fib(x - 1) + fib(x - 2);
  }
}

int main(int argc, char const *argv[])
{
  long int max_number = 38;
  if (argc > 1) {
    max_number = strtol(argv[1], NULL, 10);
  }

  for (int i = 0; i <= max_number; ++i) {
    printf("%d - %d\n", i, fib(i));
  }
  return 0;
}
