one <- c("one", "two", "three", "four", "five",
           "six", "seven", "eight", "nine")
ten <- c("ten", "eleven", "twelve", "thirteen", "fourteen",
            "fifteen", "sixteen", "seventeen", "eighteen", "nineteen")
ten2 <- c("twenty", "thirty", "forty", "fifty",
             "sixty", "seventy", "eighty", "ninety")
hundred <- c("hundred")
and <- c("and")

n <- 1:999
words <- rep("", length(n))
if1 <- n>=100
words[if1] <- paste(words[if1], one[floor(n/100)], hundred)
if2 <- n>=100 & n%%100 != 0
words[if2] <- paste(words[if2], and)
t.n <- (n - floor(n/100)*100)
if3 <- t.n >= 10 & t.n <20
words[if3] <- paste(words[if3], rep(ten,9))
if4 <- !if3 & t.n>=20
words[if4] <- paste(words[if4], ten2[floor(t.n[if4]/10)-1]) 
if5 <- n%%10 != 0 & !if3
words[if5] <- paste(words[if5], one[floor(n[if5]%%10)])
words <- c(words, "one thousand")

words2 <- gsub("\\s", "", words)
words.length <- sapply(words2, function(x)length((strsplit(x,"")[[1]])))
sum(words.length)