# ABC441 A - 	Black Square
# See problem: https://atcoder.jp/contests/abc441/tasks/abc441_a
# 2026-01-17 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
P <- input[1]
Q <- input[2]
X <- input[3]
Y <- input[4]

if (P <= X && X <= P + 99 && Q <= Y && Y <= Q + 99) {
  cat("Yes\n")
} else {
  cat("No\n")
}
