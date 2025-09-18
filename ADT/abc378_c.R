# ABC378 C - Repeating
# See problem: https://atcoder.jp/contests/abc378/tasks/abc378_c
# 2025-09-18 WA->AC+ (ADT　20250918　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

idx <- as.integer(factor(A, levels = unique(A)))
K <- max(idx)

last <- integer(K)
B <- integer(N)

for (i in seq_len(N)) {
  k <- idx[i]
  li <- last[k]
  if (li == 0L) B[i] <- -1L else B[i] <- li
  last[k] <- i
}

cat(B, sep = " ")
