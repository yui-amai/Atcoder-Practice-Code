# ABC240 A - Edge Checker
# See problem: https://atcoder.jp/contests/abc240/tasks/abc240_a
# 2025-08-07 AC+ (ADT　20250807　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
a <- input[1]
b <- input[2]

if ((b - a) == 1 || (a == 1 && b == 10)) {
  cat("Yes\n")
} else {
  cat("No\n")
}
