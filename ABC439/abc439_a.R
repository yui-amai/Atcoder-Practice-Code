# ABC439 A - 2^n - 2*n
# See problem: https://atcoder.jp/contests/abc439/tasks/abc439_a
# 2026-01-03 AC+

options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)

ans <- 2^N - 2 * N
cat(ans, "\n")
