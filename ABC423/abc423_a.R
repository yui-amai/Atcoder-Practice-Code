# ABC423 A - Scary Fee
# See problem: https://atcoder.jp/contests/abc423/tasks/abc423_a
# 2025-09-14 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
X <- input[1]
C <- input[2]

k <- X %/% (1000 + C)
ans <- k * 1000

cat(ans, "\n")
