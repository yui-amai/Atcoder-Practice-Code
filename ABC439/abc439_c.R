# ABC439 C - 2026
# See problem: https://atcoder.jp/contests/abc439/tasks/abc439_c
# 2026-01-03 AC+

options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)

m <- floor(sqrt(N))
sq <- as.integer((1:m) * (1:m))

cnt <- integer(N)

for (y in 2:m) {
  s <- sq[1:(y - 1)] + sq[y]
  s <- s[s <= N]
  cnt[s] <- cnt[s] + 1L
}

good <- which(cnt == 1L)
k <- length(good)

cat(k, "\n", sep = "")
if (k > 0L) cat(good, sep = " ")
cat("\n")
