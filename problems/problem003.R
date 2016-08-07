source("../R/prime_funs.R")
n <- 600851475143
i <- 2:ceiling(sqrt(n))
f <- i[n %% i == 0]
f <- c(f,rev(n/f))
f[sapply(f, is.prime)]