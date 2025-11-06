# ABC356 A - Subsegment Reverse
# See problem: https://atcoder.jp/contests/abc356/tasks/abc356_a
# 2025-11-06 AC+ (ADT　20251106　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
L <- input[2]
R <- input[3]

A <- 1:N
A[L:R] <- rev(A[L:R])

cat(A, sep = " ", "\n")
