# ABC437 A - Feet
# See problem: https://atcoder.jp/contests/abc437/tasks/abc437_a
# 2025-12-20 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]

ans <- 12 * A + B
cat(ans, "\n")
