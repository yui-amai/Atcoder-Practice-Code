input <- scan("stdin", what = integer(), quiet = TRUE)

N <- input[1]
A <- input[2:(N + 1)]
K <- input[N + 2]

count <- sum(A >= K)
cat(count, "\n")
