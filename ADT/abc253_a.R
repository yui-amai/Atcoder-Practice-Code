# ABC253 A - Median?
# See problem: https://atcoder.jp/contests/abc253/tasks/abc253_a
# 2025-10-01 AC+ (ADT　20251001　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
a <- input[1]
b <- input[2]
c <- input[3]

if (a <= b && b <= c || c <= b && b <= a) cat("Yes\n") else cat("No\n")
