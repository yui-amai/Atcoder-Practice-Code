# ABC433 A - Happy Birthday! 4
# See problem: https://atcoder.jp/contests/abc433/tasks/abc433_a
# 2025-11-22 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
X <- input[1]
Y <- input[2]
Z <- input[3]

diff <- X - Z * Y
times <- Z - 1

if (diff %% times == 0 && diff / times >= 0) {
  cat("Yes\n")
} else {
  cat("No\n")
}
