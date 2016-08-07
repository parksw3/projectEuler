is.prime <- function(x){
    i <- 2:ceiling(sqrt(x))
    for(i in i){
        if(x %% i == 0){
            return(FALSE)
        }
    }
    return(TRUE)
}