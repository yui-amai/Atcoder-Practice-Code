# ABC222 B - Failing Grade
# See problem: https://atcoder.jp/contests/abc222/tasks/abc222_b
# 2025-12-09 AC+ (ADT　20251209　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
P <- input[2]
a <- input[-(1:2)]

ans <- sum(a < P)
cat(ans, "\n")
