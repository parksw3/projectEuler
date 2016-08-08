triNum <- function(i){
    return(sum(1:i))
}

nDivisor <- function(n){
    lim <- floor(sqrt(n))
    div.vec <- c(1:lim)
    nDiv <- 2 * sum(n%%div.vec == 0) - (n%%lim == 0)
    return(nDiv)
}

i <- 1
n <- triNum(i)
while(nDivisor(n) < 500){
    i <- i + 1
    n <- triNum(i)
}
print(n)