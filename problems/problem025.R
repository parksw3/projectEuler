library(gmp)
i <- 2
f1 <- f2 <- as.bigz(1)
fib <- c(f1, f2)
while(TRUE){
    newFib <- fib[i] + fib[i-1]
    fib <- c(fib, newFib)
    i <- i + 1
    if(log10.bigz(newFib) >= 999) break
}
i
