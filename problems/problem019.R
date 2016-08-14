defineYear <- function(year){
    days <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
    if((year %% 4 == 0 & year %% 100 != 0) | year %% 400 == 00){
        days[2] <- 29
    }
    d <- unlist(sapply(days, function(x)1:x))
    y <- rep(year, length(d))
    return(matrix(c(d,y), 2, length(d), byrow = TRUE))
}

data <- matrix(unlist(sapply(1900:2000, defineYear)), ncol = 2, byrow = TRUE)
sum((1:nrow(data))%%7 == 6 & data[,2]>1900 & data[,1] == 1)