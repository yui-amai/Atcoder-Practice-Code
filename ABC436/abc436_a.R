options(scipen = 100, digits = 15)
input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[2]

k <- N - nchar(S)
ans <- paste0(paste(rep("o", k), collapse = ""), S)
cat(ans, "\n")
