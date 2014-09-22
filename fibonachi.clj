#!/usr/bin/clojure
(defn fib [x] (if (< x 2) x (+ (fib (- x 1)) (fib (- x 2)))))

(if (nil? *command-line-args*) (def max_number 38) (def max_number (read-string (first *command-line-args*))))
(println (for [x (range 0 (+ max_number 1))] (format "%d - %d\n" x (fib x))))
