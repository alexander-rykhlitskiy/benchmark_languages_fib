#!/usr/bin/escript
main([String]) ->
  N = list_to_integer(String),
  fibonachi:fib_numbers(N);
main(_) ->
  fibonachi:fib_numbers(38).
