is.prime <- function(x){
    i <- 2:ceiling(sqrt(x))
    for(i in i){
        if(x %% i == 0){
            return(FALSE)
        }
    }
    return(TRUE)
}

n <- 600851475143
i <- 2:ceiling(sqrt(n))
f <- i[n %% i == 0]
f <- c(f,rev(n/f))
f[sapply(f, is.prime)]