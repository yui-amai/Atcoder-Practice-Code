N <- scan("stdin", what = numeric(), nmax = 1, quiet = TRUE)

mod <- 998244353
inv2 <- (mod + 1) %/% 2

N_mod <- N %% mod
N1_mod <- (N + 1) %% mod
resInit <- N_mod * N1_mod %% mod * inv2 %% mod

resS <- 0
l <- 1
while (l <= N) {
  q <- floor(N / l)
  r <- floor(N / q)
  cnt <- (r - l + 1) %% mod
  resS <- (resS + (q %% mod) * cnt) %% mod
  l <- r + 1
}

ans <- (resInit - resS) %% mod
cat(as.integer(ans), "\n")
