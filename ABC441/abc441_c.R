# ABC441 C - Sake or Water
# See problem: https://atcoder.jp/contests/abc441/tasks/abc441_c
# 2026-01-17 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = double(), quiet = TRUE)
i <- 1

N <- as.integer(input[i])
K <- as.integer(input[i + 1])
X <- input[i + 2]
i <- i + 3
A <- input[i:(i + N - 1)]

A <- sort(A)
pref <- c(0, cumsum(A))

if (pref[K + 1] - pref[1] < X) {
  cat("-1\n")
} else {
  lo <- N - K + 1
  hi <- N
  while (lo < hi) {
    mid <- (lo + hi) %/% 2
    s <- N - mid + 1
    t <- mid + K - N
    e <- s + t - 1
    g <- pref[e + 1] - pref[s]

    if (g >= X) hi <- mid else lo <- mid + 1
  }
  cat(lo, "\n")
}
