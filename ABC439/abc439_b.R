# ABC439 B - Happy Number
# See problem: https://atcoder.jp/contests/abc439/tasks/abc439_b
# 2026-01-03 AC+

options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)

x <- N
seen <- integer()

repeat {
  if (x == 1L) {
    cat("Yes\n")
    break
  }
  if (x %in% seen) {
    cat("No\n")
    break
  }
  seen <- c(seen, x)
  d <- as.integer(strsplit(as.character(x), "")[[1]])
  x <- sum(d * d)
}
