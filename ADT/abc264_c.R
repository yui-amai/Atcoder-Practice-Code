# ABC264 C - Matrix Reducing
# See problem: https://atcoder.jp/contests/abc264/tasks/abc264_c
# 2025-08-27 AC+ (ADT　20250827　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
H1 <- input[1]
W1 <- input[2]
i <- 3
A <- matrix(input[i:(i + H1 * W1 - 1)], nrow = H1, byrow = TRUE)
i <- i + H1 * W1
H2 <- input[i]
W2 <- input[i + 1]
i <- i + 2
B <- matrix(input[i:(i + H2 * W2 - 1)], nrow = H2, byrow = TRUE)

rows_list <- combn(H1, H2, simplify = FALSE)
cols_list <- combn(W1, W2, simplify = FALSE)

ok <- FALSE
for (r in rows_list) {
  for (c in cols_list) {
    if (all(A[r, c, drop = FALSE] == B)) {
      ok <- TRUE
      break
    }
  }
  if (ok) break
}

cat(if (ok) "Yes\n" else "No\n")
