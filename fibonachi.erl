-module (fibonachi).

-export ([fib/1]).
-export ([fib_numbers/1]).
-export ([tail_fib/1]).

fib(N) when N < 2 -> N;
fib(N) -> fib(N - 1) + fib(N - 2).

fib_numbers(MaxN, CurrentN) when MaxN == CurrentN - 1 -> 0;
fib_numbers(MaxN, CurrentN) ->
  F = fib(CurrentN),
  io:format("~w - ~w\n", [CurrentN, F]),
  fib_numbers(MaxN, CurrentN + 1).

fib_numbers(MaxN) ->
  fib_numbers(MaxN, 0).

tail_fib_h(End,N,LastFib,SecondLastFib) ->
  case N of
    End -> LastFib + SecondLastFib;
    0 -> tail_fib_h(End, 1, 0, 0) ;
    1 -> tail_fib_h(End, 2, 1, 0) ;
    _ -> tail_fib_h(End,N+1,SecondLastFib+LastFib,LastFib)
  end.
tail_fib(N)->
     tail_fib_h(N,0,0,0).
