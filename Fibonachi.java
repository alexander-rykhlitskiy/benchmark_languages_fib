public class Fibonachi {
  private static int fib(int x){
    if(x < 2) {
      return x;
    } else {
      return fib(x - 1) + fib(x - 2);
    }
  }
  public static void main(String args[]){
    int maxNumber = 38;
    if (args.length > 0) {
      maxNumber = Integer.parseInt(args[0]);
    }

    for (int i = 0; i <= maxNumber; ++i) {
      System.out.println(String.format("%d - %d", i, fib(i)));
    }
  }
}
