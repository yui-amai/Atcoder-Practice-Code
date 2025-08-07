# ABC375 C - Spiral Rotation
# See problem: https://atcoder.jp/contests/abc375/tasks/abc375_c
# 2025-08-07 TLE (ADT　20250807　EASY) -> py

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
N <- as.integer(lines[1][[1]])
A_lines <- lines[-1]

A <- do.call(rbind, strsplit(A_lines, ""))
B <- matrix("", nrow = N, ncol = N)
half <- N / 2

for (i in seq_len(N)) {
  for (j in seq_len(N)) {
    p <- min(i, j, N + 1 - i, N + 1 - j)
    if (p <= half) {
      k <- p %% 4
      if (k == 1) {
        i2 <- j
        j2 <- N + 1 - i
      } else if (k == 2) {
        i2 <- N + 1 - i
        j2 <- N + 1 - j
      } else if (k == 3) {
        i2 <- N + 1 - j
        j2 <- i
      } else {
        i2 <- i
        j2 <- j
      }
    } else {
      i2 <- i
      j2 <- j
    }
    B[i2, j2] <- A[i, j]
  }
}

for (i in seq_len(N)) {
  cat(paste(B[i, ], collapse = ""), "\n")
}
