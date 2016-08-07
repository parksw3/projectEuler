fib <- c(1,2)
i <- 2
while(fib[i] < 4e6){
    new.fib <- fib[i] + fib[i-1]
    fib <- c(fib, new.fib)
    i <- i + 1
}
sum(fib[fib%%2 == 0])