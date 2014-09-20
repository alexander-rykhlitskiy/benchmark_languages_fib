#!/usr/bin/python
import sys

def fib(x):
  if x < 2:
    return x
  else:
    return fib(x - 1) + fib(x - 2)

max_number = 38
if len(sys.argv) > 1:
  max_number = int(sys.argv[1])

for i in range(max_number + 1):
  print("%d - %d" % (i, fib(i)))

