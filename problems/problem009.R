## a = m^2 - n^2
## b = 2*m*n
## c = m^2 + n^2

for(m in 2:25){
    for(n in 1:(m-1)){
        a <- m^2 - n^2
        b <- 2 * m * n
        c <- m^2 + n^2
        if(a + b + c == 1000){
            cat(c(a,b,c), "\n")
            break
        }
    }
    if(a + b + c == 1000){
        cat(a*b*c)
        break
    }
}