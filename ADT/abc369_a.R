# ABC369 A - 369
# See problem: https://atcoder.jp/contests/abc369/tasks/abc369_a
# 2025-09-10 AC+ (ADT　20250910　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]

x <- c(2 * B - A, 2 * A - B)

if ((A + B) %% 2 == 0) {
  x <- c(x, (A + B) %/% 2)
}

x <- unique(x)
cat(length(x), "\n")
