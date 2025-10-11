# ABC427 B - Sum of Digits Sequence
# See problem: https://atcoder.jp/contests/abc427/tasks/abc427_b
# 2025-10-11 AC+

N <- scan("stdin", what = integer(), quiet = TRUE)

A <- 1
S <- 0

for (i in seq_len(N)) {
  F <- sum(as.integer(strsplit(as.character(A), "")[[1]]))
  S <- S + F
  A <- S
}
cat(A, "\n")
