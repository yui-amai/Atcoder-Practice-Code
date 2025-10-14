# ABC286 A - Range Swap
# See problem: https://atcoder.jp/contests/abc286/tasks/abc286_a
# 2025-10-14 AC+ (ADT　20251014　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
P <- input[2]
Q <- input[3]
R <- input[4]
S <- input[5]
A <- input[-(1:5)]

B <- A
pq <- A[P:Q]
rs <- A[R:S]
B[P:Q] <- rs
B[R:S] <- pq

cat(paste(B, collapse = " "), "\n")
