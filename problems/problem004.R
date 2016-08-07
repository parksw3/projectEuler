## a*10e5 + b*10e4 + c*10e3 + c*10e2 + b*10e1 + a
## = a *11 * 9091 + b * 11 * 910 + c * 11 * 100
## = 11 (9091*a + 910*b + 100*c)
digit <- function(x){
    return(as.numeric(strsplit(as.character(x), "")[[1]]))
}

for(i in 999:900){
    abc <- digit(i)
    n <- 9091 * abc[1] + 910 * abc[2] + 100 * abc[3]
    for(j in 10:90){
        if(n %% j == 0 & n/j < 1000){
            print(j)
            print(abc)
            break
        }
    }
}