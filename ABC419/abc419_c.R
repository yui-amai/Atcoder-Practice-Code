# ABC419 C - King's Summit
# See problem: https://atcoder.jp/contests/abc419/tasks/abc419_c
# 2025-08-16 AC+

options(scipen = 100)
input <- scan("stdin", what = numeric(), quiet = TRUE)
N <- as.integer(input[1])
rc <- matrix(input[-1], ncol = 2, byrow = TRUE)
r <- rc[, 1]
c <- rc[, 2]

dr <- max(r) - min(r)
dc <- max(c) - min(c)
ans <- max(ceiling(dr / 2), ceiling(dc / 2))

cat(format(ans, scientific = FALSE), "\n")
