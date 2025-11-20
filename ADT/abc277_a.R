# ABC277 A - ^{-1}
# See problem: https://atcoder.jp/contests/abc277/tasks/abc277_a
# 2025-11-20 AC+ (ADT　20251120　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
X <- input[2]
P <- input[-(1:2)]

k <- which(P == X)
cat(k, "\n")
