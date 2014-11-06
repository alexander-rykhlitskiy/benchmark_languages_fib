object Fibonachi {
  def fib(x: Int) : Int = {
    if (x < 2) x else fib(x - 1) + fib(x - 2)
  }
  def main(args: Array[String]) {
    var maxNumber = 38
    if(args.length > 0){
      maxNumber = args(0).toInt
    }

    for( i <- 0 to maxNumber) {
      println(s"$i - ${fib(i)}")
    }
  }
}
