names <- scan("p022_names.txt", character(), sep = ",")
names[is.na(names)] <- as.character("NA")
names <- sort(names)

alph <- c("a", "b", "c", "d", "e", "f", "g", "h",
          "i", "j", "k", "l", "m", "n", "o", "p",
          "q", "r", "s", "t", "u", "v", "w", "x",
          "y", "z")
num <- c(1:26)

for(i in num){
    names <- gsub(alph[i], paste0(i, ","), names, ignore.case = TRUE)
}
nL <- lapply(names, function(x) sum(as.numeric((strsplit(x, split = ",")[[1]]))))
sum(1:length(nL) * unlist(nL))