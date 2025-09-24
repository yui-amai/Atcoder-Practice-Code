# ABC347 A - Divisible
# See problem: https://atcoder.jp/contests/abc347/tasks/abc347_a
# 2025-09-24 AC+ (ADT　20250924　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
K <- input[2]
A <- input[-(1:2)]

ans <- sort(A[A %% K == 0] / K)
cat(ans, sep = " ", "\n")
