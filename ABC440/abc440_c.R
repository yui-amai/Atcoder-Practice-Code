# ABC440 C - Striped Horse
# See problem: https://atcoder.jp/contests/abc440/tasks/abc440_c
# 2026-01-10 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", quiet = TRUE)
idx <- 1L
T <- input[idx]
idx <- idx + 1L
ans <- character(T)

for (t in seq_len(T)) {
  N <- input[idx]
  W <- input[idx + 1L]
  idx <- idx + 2L
  C <- input[idx:(idx + N - 1L)]
  idx <- idx + N

  m <- 2L * W
  S <- numeric(m)

  for (i in seq_len(N)) {
    r <- i %% m
    S[r + 1L] <- S[r + 1L] + C[i]
  }


  A <- c(S, S)
  P <- c(0, cumsum(A))

  start <- 1L:m
  sums <- P[start + W] - P[start]
  ans[t] <- as.character(min(sums))
}

cat(paste(ans, collapse = "\n"), "\n")
