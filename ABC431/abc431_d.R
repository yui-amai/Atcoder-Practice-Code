# ABC431 D - Robot Customize
# See problem: https://atcoder.jp/contests/abc431/tasks/abc431_d
# 2025-11-08 AC-

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
idx <- 1
N <- input[idx]
idx <- idx + 1

W <- integer(N)
H <- numeric(N)
B <- numeric(N)
for (i in 1:N) {
  W[i] <- input[idx]
  idx <- idx + 1
  H[i] <- input[idx]
  idx <- idx + 1
  B[i] <- input[idx]
  idx <- idx + 1
}

totalW <- sum(W)
cap <- totalW %/% 2
sumBi <- sum(B)
delta <- H - B

dp <- rep(-Inf, cap + 1)
dp[1] <- 0

for (i in 1:N) {
  w <- W[i]
  vgain <- delta[i]
  if (w <= cap) {
    left <- 1:(cap + 1L - w)
    right <- (w + 1L):(cap + 1L)
    cand <- dp[left] + vgain
    dp[right] <- pmax(dp[right], cand)
  }
}

best_inc <- max(dp, na.rm = TRUE)
ans <- sumBi + best_inc
cat(sprintf("%.0f\n", ans))
