# ABC438 B - Substring 2
# See problem: https://atcoder.jp/contests/abc438/tasks/abc438_b
# 2025-12-27 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
M <- as.integer(input[2])
S <- as.integer(strsplit(input[3], "", fixed = TRUE)[[1]])
T <- as.integer(strsplit(input[4], "", fixed = TRUE)[[1]])

ans <- Inf
for (i in 0:(N - M)) {
  cost <- 0L
  for (j in 1:M) {
    a <- T[j]
    b <- S[i + j]
    cost <- cost + ((b - a + 10L) %% 10L)
  }
  if (cost < ans) ans <- cost
}

cat(ans, "\n")
