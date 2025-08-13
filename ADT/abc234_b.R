# ABC234 B - Longest Segment
# See problem: https://atcoder.jp/contests/abc234/tasks/abc234_b
# 2025-08-13 AC+ (ADT　20250813　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
xy <- input[-1]
x <- xy[seq(1, 2 * N, by = 2)]
y <- xy[seq(2, 2 * N, by = 2)]

maxd2 <- 0
for (i in 1:(N - 1)) {
  dx <- x[(i + 1):N] - x[i]
  dy <- y[(i + 1):N] - y[i]
  d2 <- dx * dx + dy * dy
  m <- max(d2)
  if (m > maxd2) maxd2 <- m
}

ans <- sqrt(maxd2)
cat(sprintf("%.10f\n", ans))
