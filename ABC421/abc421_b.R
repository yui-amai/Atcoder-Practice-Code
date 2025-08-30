# ABC421 B - Fibonacci Reversed
# See problem: https://atcoder.jp/contests/abc421/tasks/abc421_b
# 2025-08-30 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
X <- input[1]
Y <- input[2]

f <- function(x) {
  rev_str <- paste0(rev(strsplit(as.character(x), "")[[1]]), collapse = "")
  rev_num <- as.numeric(rev_str)
  return(rev_num)
}

A <- numeric(10)

A[1] <- X
A[2] <- Y
for (i in 3:10) {
  A[i] <- f(A[i - 1] + A[i - 2])
}

cat(A[10], "\n")
