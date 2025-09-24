# ABC364 C - Minimum Glutton
# See problem: https://atcoder.jp/contests/abc364/tasks/abc364_c
# 2025-09-24 AC+ (ADT　20250924　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = double(), quiet = TRUE)
N <- input[1]
X <- input[2]
Y <- input[3]
A <- input[4:(N + 3)]
B <- input[(N + 4):(2 * N + 3)]

k_A <- {
  s <- cumsum(sort(A, decreasing = TRUE))
  w <- which(s > X)
  if (length(w)) w[1] else Inf
}

k_B <- {
  s <- cumsum(sort(B, decreasing = TRUE))
  w <- which(s > Y)
  if (length(w)) w[1] else Inf
}

ans <- min(k_A, k_B, N)
cat(ans, "\n")
