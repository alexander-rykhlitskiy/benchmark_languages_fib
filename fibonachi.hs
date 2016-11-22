import System.Environment

main = do
  let fib x = if x < 2 then x else fib(x - 1) + fib(x - 2)
  args <- getArgs

  mapM (\x -> putStrLn $ show(x) ++ " - " ++ (show(fib(x))))
       [1..(if null args then 38 else (read (head args) :: Int))]
