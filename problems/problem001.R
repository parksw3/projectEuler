answer <- 0
for(i in 1:999){
    if(i %% 3 == 0 || i %% 5 == 0){
        answer <- answer + i
    }
}
print(answer)


##vectorize
i <- c(1:999)
sum(n[i %% 3 == 0 | i %% 5 == 0])