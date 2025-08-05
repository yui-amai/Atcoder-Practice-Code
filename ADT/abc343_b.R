# ABC343 B - Adjacency Matrix
# See problem: https://atcoder.jp/contests/abc343/tasks/abc343_b
# 2025-08-05 AC+ (ADT　20250805　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
mat <- matrix(input[-1], nrow = N, byrow = TRUE)

for (i in 1:N) {
  col <- which(mat[i, ] == 1)
  if (length(col) > 0) {
    cat(col, sep = " ")
  }
  cat("\n")
}
