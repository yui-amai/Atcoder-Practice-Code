# ABC430 A - Candy Cookie Law
# See problem: https://atcoder.jp/contests/abc430/tasks/abc430_a
# 2025-11-01 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
C <- input[3]
D <- input[4]

if (C >= A && D < B) {
  cat("Yes\n")
} else {
  cat("No\n")
}
