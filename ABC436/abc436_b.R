options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)

mat <- matrix(0L, nrow = N, ncol = N)
r <- 0L
c <- as.integer((N - 1) / 2)

for (k in 1:(N * N)) {
  mat[r + 1, c + 1] <- k

  if (k == N * N) break

  nr <- (r - 1L) %% N
  nc <- (c + 1L) %% N

  if (mat[nr + 1, nc + 1] == 0L) {
    r <- nr
    c <- nc
  } else {
    r <- (r + 1L) %% N
  }
}

for (i in 1:N) {
  cat(paste(mat[i, ], collapse = " "), "\n")
}
