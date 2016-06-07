defmodule Fibonachi do
  def fib(x), do: if x < 2, do: x, else: fib(x - 1) + fib(x - 2)
end

max_number = 38

if first = List.first(System.argv()) do
  { max_number, _ } = Integer.parse(first)
end

Enum.each(0..max_number, &(IO.puts "#{&1} - #{Fibonachi.fib(&1)}"))
