# ABC290 A - Contest Result
# See problem: https://atcoder.jp/contests/abc290/tasks/abc290_a
# 2025-08-21 AC+ (ADT　20250821　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)

N <- input[1]
M <- input[2]
A <- input[3:(N + 2)]
B <- input[(N + 3):(M + N + 2)]

cat(sum(A[B]), "\n")
