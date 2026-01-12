# ABC440 B - Trifecta
# See problem: https://atcoder.jp/contests/abc440/tasks/abc440_b
# 2026-01-10 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
T <- input[-1]

ans <- order(T)[1:3]

cat(ans, sep = " ")
cat("\n")
