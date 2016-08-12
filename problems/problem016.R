library(gmp)

num <- pow.bigz(2, 1000)
digits <- strsplit(as.character(num), split = "")
result <- sum(as.numeric(unlist(digits)))
cat("The result is:", result, "\n")
##https://www.r-bloggers.com/project-euler-problem-16-2/https://www.r-bloggers.com/project-euler-problem-16-2/