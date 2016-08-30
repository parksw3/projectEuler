propSum <- function(x){
    lim <- floor(sqrt(x))
    div.vec <- c(1:lim)
    div <- div.vec[x%%div.vec == 0]
    ans <- sum(div + x/div) - x - lim * (x == lim^2)
    return(ans)
}

lim <- 28123
abun <- rep(FALSE, lim)
for(i in 1:lim){
    if(propSum(i) > i){
        abun[i] <- TRUE
    }
}
abun[12]

abun2 <- which(abun == TRUE)
lim2 <- length(abun2)
sumofabun <- rep(FALSE, lim)
for(i in 1:lim2){
    cont <- TRUE
    j <- i
    while(cont){
        j <- j + 1
        val <- abun2[i] + abun2[j]
        if(val <= lim){
            sumofabun[val] = TRUE
        }else{
            cont <- FALSE
            cat(i, "\n")
        }
    }
}
sum(which(sumofabun == FALSE))

##Can I make this faster?