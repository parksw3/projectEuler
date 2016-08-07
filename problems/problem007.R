i <- 3
primes <- c(2,3)

while(length(primes)<10001){
    i <- i + 2
    is.prime = TRUE
    for(j in primes[primes <= sqrt(i)]){
        if(i %% j == 0){
            is.prime = FALSE
        }
    }
    if(is.prime == TRUE){
        primes <- c(primes, i)
    }
    
}