findPrime <- function(max){
    if (max <= 5){
        primes <- c(2, 3, 5)
        primes <- primes[primes <= max]
    }else{
        n <- 1:max
        r <- c(1,7,11,13,17,19,23,29,31,37,41,43,47,49,53,59)
        lim <- floor(sqrt(max)) + 1
        is.prime <- (n %% 60) %in% r
        is.prime[c(1,2,3,5)] <- c(FALSE,rep(TRUE,3))
        
        count <- 4
        p <- n[is.prime][count]
        
        while(p < lim){
            is.prime[p * (2:floor(max/p))] <- FALSE
            count <- count + 1
            p <- n[is.prime][count]
        }
    }
    return(n[is.prime])
}

answer <- findPrime(2e6)

sum(as.numeric(answer))