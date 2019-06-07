Time  | Language     | Compile                                      | Run |
|---|---|---|---|
0.40 | **nim**      | nim c -d:release --opt:speed --passL:-s --passL:-openmp --passC:-openmp --gc:markAndSweep fibonachi_parallel_for.nim | time ./fibonachi |
0.65 | **nim**      | nim c -d:release --opt:speed --passL:-s --gc:markAndSweep fibonachi.nim | time ./fibonachi |
0.98 | **c**        | gcc -o c_fibonachi -O3 -std=gnu99 fibonachi.c             | time ./c_fibonachi |
1.17 | **java**     | javac Fibonachi.java                                      | time java Fibonachi |
1.17 | **kotlin**     | kotlinc fibonachi.kt -include-runtime -d fibonachi.jar  | time java -jar fibonachi.jar |
1.19 | **rust**     | rustc fibonachi.rs -O -o rust_fibonachi                   | time ./rust_fibonachi |
1.20 | **crystal**  | crystal build fibonachi.rb --release -o crystal_fibonachi | time ./crystal_fibonachi |
1.27 | **c# (mono)** | gmcs -out:cs_fibonachi.exe fibonachi.cs                  | time ./cs_fibonachi.exe |
1.55 | **scala**    | scalac fibonachi.scala                                    | time scala Fibonachi |
1.58 | **go**       | go build -o go_fibonachi fibonachi.go                     | time ./go_fibonachi |
1.64 | **clojure** (memoization)  | -                                           | time ./fibonachi_memoized.clj |
2.71 | **nodeJS**   | -                                                         | time nodejs fibonachi.js |
4.47 | **c# (.net)** | cd dotnet && dotnet restore && dotnet publish && cd ..   | time dotnet dotnet/bin/Debug/netcoreapp1.0/publish/dotnet.dll
5.62  | **infraruby** | cd infraruby && bundle install && rake program:infraruby-main:core:compile | time (rake program:infraruby-main:core:execute) |
5.7  | **truffleruby-1.0.0-rc2**    | -                                         | time ruby fibonachi.rb |
7.82 | **clojure**  | -                                                         | time ./fibonachi.clj |
8.87 | **rbx-2.1.1**| -                                                         | time ruby fibonachi.rb |
9.32 | **erlang**   | erlc fibonachi.erl                                        | time ./run.erl |
9.70 | **elixir**   | - | time elixir fibonachi.exs |
10.5 | **ruby-2.6 jit** | -                                                         | time ruby --jit fibonachi.rb |
16.5 | **jruby**    | -                                                         | time ruby fibonachi.rb |
25   | **ruby-2.6** | -                                                         | time ruby fibonachi.rb |
30.8 | **ruby-2.1** | -                                                         | time ruby fibonachi.rb |
43.7 | **lua**      | -                                                         | time lua fibonachi.lua |
44.4 | **haskell** | ghc -o hs_fibonachi fibonachi.hs                           | time ./hs_fibonachi |
60.5 | **python**   | -                                                         | time ./fibonachi.py |
107 | **R**        | -                                                         | time Rscript fibonachi.R 34

Each program was built and ran under ubuntu 14.04 amd64.
Fibonachi function was written in this way only for educational purposes.
These ones are to try to estimate performance (I know it shows not enough for any comparison) of the languages, get some practice and, mainly, just for fun.
