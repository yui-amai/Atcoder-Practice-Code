# ABC298 B - Coloring Matrix
# See problem: https://atcoder.jp/contests/abc298/tasks/abc298_b
# 2025-09-02 RE->AC+ (ADT　20250902　EASY)

input <- scan("stdin", quiet = TRUE)
N <- input[1]
p <- 2
A <- matrix(input[p:(p + N * N - 1)], nrow = N, ncol = N, byrow = TRUE)
p <- p + N * N
B <- matrix(input[p:(p + N * N - 1)], nrow = N, ncol = N, byrow = TRUE)

rotate <- function(M) t(M[N:1, , drop = FALSE])

ok <- FALSE
C <- A
for (k in 0:3) {
  if (all(C <= B)) {
    ok <- TRUE
    break
  }
  C <- rotate(C)
}

cat(if (ok) "Yes\n" else "No\n")
