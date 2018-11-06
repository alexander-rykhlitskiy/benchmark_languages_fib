import os, strutils

func fib(n: uint64): uint64 {.inline.} =
  if n <= 1: return 1
  return fib(n - 1) + fib(n - 2)

for i in 0..paramStr(1).parseint.uint64:
  echo fib(i)
