use std::env;

fn fib(x: i32) -> i32 {
  if x < 2 {
    return x
  } else {
    return fib(x - 1) + fib(x - 2)
  }
}

fn main() {
  let mut max_number = 38;
  if let Some(input_number) = env::args().nth(1) {
    max_number = input_number.parse::<i32>().unwrap()
  }
  for i in 0..(max_number + 1) {
    println!("{} - {}", i, fib(i));
  }
}
