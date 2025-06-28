input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[seq(2, length(input), by = 2)]
B <- input[seq(3, length(input), by = 2)]

result <- sum(B > A)
cat(result, "\n")
