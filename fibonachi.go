package main

import "fmt"
import "os"
import "strconv"
import "log"

func main() {
	var max_number int64
	var err error
	max_number = 38
	if len(os.Args) > 1 {
		max_number, err = strconv.ParseInt(os.Args[1], 10, 0)
		if err != nil {
			log.Fatal(err)
		}
	}
	for i := 0; i <= int(max_number); i++ {
		fmt.Println(i, fib(i))
	}
}

func fib(x int) int {
	if x < 2 {
		return x
	}
	return fib(x-1) + fib(x-2)
}
