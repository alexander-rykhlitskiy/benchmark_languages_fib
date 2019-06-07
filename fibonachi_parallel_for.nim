import strutils
from os import paramCount, paramStr

func fib(n: uint32): uint32 {.inline.} =
  if unlikely(n <= 1):
    result = n
  else:
    result = fib(n - 1) + fib(n - 2)

let n = if unlikely(paramCount() == 1): paramStr(1).parseInt.uint32 else: 38
for i in 0 || n:
  echo i, " - ", fib(i)
