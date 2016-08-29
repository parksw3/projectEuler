propSum <- function(x){
    lim <- floor(sqrt(x))
    div.vec <- c(1:lim)
    div <- div.vec[x%%div.vec == 0]
    ans <- sum(div + x/div) - x - lim * (x == lim^2)
    return(ans)
}

lim <- 10000

amicable <- rep(NA, (lim-1))

for(i in 2:lim){
    if(is.na(amicable[i])){
        a <- propSum(i)
        b <- propSum(a)
        if(i == b && i != a){
            amicable[i-1] <- amicable[b-1] <- TRUE
        }else{
            amicable[i-1] <- FALSE
        }
    }
}

sum(which(amicable == TRUE)+1)
