Time  | Language     | Compile                                      | Run |
|---|---|---|---|
0.985 | **c**        | gcc -o c_fibonachi -O3 -std=gnu99 fibonachi.c| time ./c_fibonachi |
1.172 | **java**     | javac Fibonachi.java                         | time java Fibonachi |
1.185 | **rust**     | rustc fibonachi.rs -O -o rust_fibonachi      | time ./rust_fibonachi |
1.200 | **crystal**  | crystal build fibonachi.rb --release         | time ./fibonachi |
1.266 | **c#** (mono)| gmcs -out:cs_fibonachi.exe fibonachi.cs      | time ./cs_fibonachi.exe |
1.552 | **scala**    | scalac scalac fibonachi.scala                | time scala Fibonachi |
1.582 | **go**       | go build -o go_fibonachi fibonachi.go        | time ./go_fibonachi |
1.643 | **clojure** (memoization)  | -                              | time ./fibonachi_memoized.clj |
2.714 | **nodeJS**   | -                                            | time nodejs fibonachi.js |
7.819 | **clojure**  | -                                            | time ./fibonachi.clj |
8.865 | **rbx-2.1.1**| -                                            | time ruby fibonachi.rb |
12.16 | **erlang**   | erlc fibonachi.erl                           | time ./run.erl |
16.50 | **jruby**    | -                                            | time ruby fibonachi.rb |
30.82 | **ruby-2.1** | -                                            | time ruby fibonachi.rb |
60.53 | **python**   | -                                            | time ./fibonachi.py |
107.5 | **R**        | -                                            | time Rscript fibonachi.R 34

Each program was built and ran under ubuntu 14.04 amd64.
Fibonachi function was written in this way only for educational purposes.
These ones are to try to estimate performance (I know it shows not enough for any comparison) of the languages, get some practice and, mainly, just for fun.
