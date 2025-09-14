# ABC423 B - Locked Rooms
# See problem: https://atcoder.jp/contests/abc423/tasks/abc423_b
# 2025-09-14 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
L <- input[-1]

a <- which(L == 1)[1]
a <- ifelse(is.na(a), N, a - 1)
b <- which(rev(L) == 1)[1]
b <- ifelse(is.na(b), N, b - 1)

ans <- max(0, N - a - b - 1)
cat(ans, "\n")
