# ABC336 C - Even Digits
# See problem: https://atcoder.jp/contests/abc336/tasks/abc336_c
# 2025-10-07 AC+ (ADT　20251007　EASY)

options(scipen = 100, digits = 15)
N <- scan("stdin", what = double(), quiet = TRUE)

x <- N - 1

if (x == 0) {
  cat("0\n")
} else {
  digs <- double(0)
  while (x > 0) {
    d <- x %% 5
    digs <- c(digs, as.integer(2 * d))
    x <- x %/% 5
  }
  ans <- paste(rev(digs), collapse = "")
  cat(ans, "\n", sep = "")
}
