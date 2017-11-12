fun fib(x: Int): Int {
  return (if (x < 2) x else (fib(x - 1) + fib(x - 2)))
}
fun main(args: Array<String>) {
  var maxNumber = 38
  if (args.size > 0) {
    maxNumber = Integer.parseInt(args[0])
  }
  for (i in 0..maxNumber) {
    println(String.format("%d - %d", i, fib(i)))
  }
}
