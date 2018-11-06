import os, strutils

func fib(n: uint64): uint64 {.inline.} =
  if n <= 1: return 1
  return fib(n - 1) + fib(n - 2)

let n = if paramCount() == 1: paramStr(1).parseInt.uint64 else: 38
for i in 0..n:
  echo i, " - ", fib(i)
