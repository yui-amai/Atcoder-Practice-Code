# ABC421 A - Misdelivery
# See problem: https://atcoder.jp/contests/abc421/tasks/abc421_a
# 2025-08-30 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[2:(N + 1)]

X <- as.integer(input[N + 2])
Y <- input[N + 3]

if (S[X] == Y) {
  cat("Yes\n")
} else {
  cat("No\n")
}
