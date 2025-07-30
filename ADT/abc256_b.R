# ABC256 B - Batters
# See problem: https://atcoder.jp/contests/abc256/tasks/abc256_b
# 2025-07-30 AC+ (ADT　20250730　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

P <- sum(rev(cumsum(rev(A))) >= 4)
cat(P, "\n")


## Python:
## import itertools
## P = sum(s >= 4 for s in itertools.accumulate(reversed(A)))
