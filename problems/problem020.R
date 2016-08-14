library(gmp)

num <- factorialZ(100)
digits <- strsplit(as.character(num), split = "")
result <- sum(as.numeric(unlist(digits)))