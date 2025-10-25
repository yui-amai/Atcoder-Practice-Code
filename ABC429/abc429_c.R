# ABC429 C - Odd One Subsequence
# See problem: https://atcoder.jp/contests/abc429/tasks/abc429_c
# 2025-10-25 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

cnt <- tabulate(A, nbins = N)

choose2 <- cnt * (cnt - 1) / 2
ans <- sum(choose2 * (N - cnt))

cat(sprintf("%.0f\n", ans))
