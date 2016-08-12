lim <- 1e6-1
collatz <- rep(NA, lim)

for(i in 1:lim){
    a <- i
    seq.length <- 1
    seq <- c(i)
    while(a != 1){
        if(a%%2 == 0){
            a <- a/2
        }else{
            a <- 3 * a + 1
        }
        seq <- c(seq, a)
        if(!is.na(collatz[a])){
            seq.length <- seq.length + collatz[a]
            a <- 1
        }else{
            seq.length <- seq.length + 1
        }
    }
    seq.length2 <- seq(from = seq.length, by = -1, length = length(seq))
    collatz[seq[seq <= lim]] <- seq.length2[seq <= lim]
}

which.max(collatz)