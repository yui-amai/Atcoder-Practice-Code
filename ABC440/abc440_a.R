# ABC440 A - Octave
# See problem: https://atcoder.jp/contests/abc440/tasks/abc440_a
# 2026-01-10 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
X <- input[1]
Y <- input[2]

ans <- X * (2^Y)
cat(ans, "\n")
