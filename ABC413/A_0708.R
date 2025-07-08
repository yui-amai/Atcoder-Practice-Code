input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[3:(2 + N)]

if (sum(A) <= M) {
  cat("Yes\n")
} else {
  cat("No\n")
}
