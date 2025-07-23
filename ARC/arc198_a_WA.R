# ARC198 A - I hate 1 (300pts)
# See problem: https://atcoder.jp/contests/arc198/tasks/arc198_a
# 2025-07-23 WA

N <- scan("stdin", what = integer(), quiet = TRUE)

if (N == 1) {
  cat("1\n1\n")
} else {
  k <- N %/% 2
  cat(format(k, scientific = FALSE), "\n")
  cat(2 * (1:k), sep = " ")
  cat("\n")
}
