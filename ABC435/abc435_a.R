# ABC435 A - Triangular Number
# See problem: https://atcoder.jp/contests/abc435/tasks/abc435_a
# 2025-12-06 AC+

N <- scan("stdin", what = integer(), quiet = TRUE)

ans <- N * (N + 1) / 2
cat(ans, "\n")
