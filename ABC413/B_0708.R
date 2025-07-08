input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[2:(1 + N)]

newcat <- c()
for (i in 1:N) {
  for (j in 1:N) {
    if (i != j && S[i] != S[j]) {
      newcat <- c(newcat, paste(S[i], S[j], sep = ""))
    }
  }
}

unique_cats <- unique(newcat)
cat(length(unique_cats), "\n")
