using System;

namespace ConsoleApplication
{
    public class Program
    {
      private static int fib(int x){
        if(x < 2) {
          return x;
        } else {
          return fib(x - 1) + fib(x - 2);
        }
      }
      static public void Main (string[] args)
      {
        int maxNumber = 38;
        if (args.Length > 0) {
          maxNumber = Convert.ToInt32(args[0]);
        }

        for (int i = 0; i <= maxNumber; ++i) {
          Console.WriteLine ("{0} - {1}", i, fib(i));
        }
      }
    }
}
