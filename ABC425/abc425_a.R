# ABC425 A - Sigma Cubes
# See problem: https://atcoder.jp/contests/abc425/tasks/abc425_a
# 2025-09-27 AC+

N <- scan("stdin", what = integer(), quiet = TRUE)

i <- 1:N
ans <- sum(((-1)^i) * (i^3))
cat(ans, "\n")
