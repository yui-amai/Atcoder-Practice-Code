# ABC361 C - Make Them Narrow
# See problem: https://atcoder.jp/contests/abc361/tasks/abc361_c
# 2025-08-06 AC+ (ADT　20250806　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
K <- input[2]
A <- input[-(1:2)]

M <- N - K
A_sorted <- sort(A)
diffs <- A_sorted[M:N] - A_sorted[1:(N - M + 1)]
ans <- min(diffs)
cat(ans, "\n")
