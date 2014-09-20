#!/usr/bin/node
function fib(x){
  if(x < 2) {
    return x;
  } else {
    return fib(x - 1) + fib(x - 2);
  }
}

max_number = 38;
if (process.argv.length > 2) {
  max_number = Number(process.argv[2]);
}
for (var i = 0; i <= max_number; i++) {
  console.log(i.toString() + ' - ' + fib(i).toString());
}
