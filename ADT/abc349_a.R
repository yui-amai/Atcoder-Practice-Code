# ABC349 A - Zero Sum Game
# See problem: https://atcoder.jp/contests/abc349/tasks/abc349_a
# 2025-08-12 AC+ (ADT　20250812　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

sumA <- sum(A)
ans <- 0 - sumA
cat(ans, "\n")
