# ABC422 D - Least Unbalanced
# See problem: https://atcoder.jp/contests/abc422/tasks/abc422_d
# 2025-09-07 TLE

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), nmax = 2L, quiet = TRUE)
N <- input[1]
K <- input[2]

ans <- K

for (n in seq_len(N)) {
  nxt <- integer(length(ans) * 2)
  idx <- 1L
  for (a in ans) {
    nxt[idx] <- a %/% 2
    nxt[idx + 1L] <- a - (a %/% 2)
    idx <- idx + 2L
  }
  ans <- nxt
}

U <- max(ans) - min(ans)
cat(U, "\n")
cat(ans, sep = " ", "\n")
