fib <- function(x) {
  return(if(x < 2) x else fib(x - 1) + fib(x - 2))
}
max_number <- 38
if(length(commandArgs()) > 5) max_number <- as.integer(commandArgs()[6])

for(i in 1:max_number) {
  print(paste(i, "-", fib(i)))
}
