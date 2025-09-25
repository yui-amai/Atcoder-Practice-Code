# ABC355 B - Piano 2
# See problem: https://atcoder.jp/contests/abc355/tasks/abc355_b
# 2025-09-25 AC+ (ADT　20250925　EASY)

input <- scan("stdin", quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[3:(2 + N)]
B <- input[(3 + N):(2 + N + M)]

vals <- c(A, B)
src <- c(rep(1L, N), rep(0L, M))

ord <- order(vals)
src_sorted <- src[ord]

ok <- any(src_sorted[-1] == 1L & src_sorted[-length(src_sorted)] == 1L)
cat(if (ok) "Yes\n" else "No\n")
