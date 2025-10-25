# ABC429 B - N - 1
# See problem: https://atcoder.jp/contests/abc429/tasks/abc429_b
# 2025-10-25 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[-(1:2)]

S <- sum(A)
sum2 <- S - M

if (any(A == sum2)) {
  cat("Yes\n")
} else {
  cat("No\n")
}
