#!/usr/bin/ruby
def fib x
  x < 2 ? x : fib(x - 1) + fib(x - 2)
end

max_number = 38
max_number = ARGV.first.to_i if ARGV.any?
(0..max_number).each { |i| puts "#{i} - #{fib(i)}" }
