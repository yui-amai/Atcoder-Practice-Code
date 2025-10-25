# ABC429 D - On AtCoder Conference
# See problem: https://atcoder.jp/contests/abc429/tasks/abc429_d
# 2025-10-25 WA

options(scipen = 100, digits = 15)
input <- scan("stdin", what = double(), quiet = TRUE)
N <- input[1]
M <- input[2]
C <- input[3]
A <- input[-(1:3)]

A <- sort(A)
r <- rle(A)
pos <- r$values
cnt <- r$lengths
K <- length(pos)

pos2 <- c(pos, pos + M)
cnt2 <- c(cnt, cnt)

ans <- 0.0
ptr_R <- 0
sum_C <- 0

for (s in 1:K) {
  if (ptr_R < s) {
    while (ptr_R < s) {
      ptr_R <- ptr_R + 1
      sum_C <- sum_C + cnt2[ptr_R]
    }
  }
  while (sum_C < C) {
    ptr_R <- ptr_R + 1
    sum_C <- sum_C + cnt2[ptr_R]
  }

  prev <- if (s == 1) pos[K] else pos[s - 1]
  L <- (pos[s] - prev) %% M
  if (L == 0) L <- M

  ans <- ans + as.double(L) * as.double(sum_C)

  sum_C <- sum_C - cnt2[s]
}

cat(sprintf("%.0f\n", ans))
