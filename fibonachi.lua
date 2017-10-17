function fib(x)
  if x < 2 then return(x) else return(fib(x - 1) + fib(x - 2)) end
end

max_number = 38
if arg[1] then max_number = tonumber(arg[1]) end
for i = 0, max_number do
  print(i .. ' - ' .. fib(i))
end
