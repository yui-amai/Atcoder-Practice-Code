# ABC423 C - Lock All Doors
# See problem: https://atcoder.jp/contests/abc423/tasks/abc423_c
# 2025-09-14 WA

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
R <- input[2]
L <- input[-(1:2)]

open_idx <- which(L == 0)
if (length(open_idx) == 0) {
  cat(0, "\n")
  q(save = "no")
}

Lmin <- min(open_idx)
Lmax <- max(open_idx)

need_close <- length(open_idx)
left_end <- min(R, Lmin)
right_end <- max(R, Lmax)

pref_closed <- c(0, cumsum(L == 1))
cross_closed <- pref_closed[right_end] - pref_closed[left_end]

ans <- need_close + 2L * cross_closed
cat(ans, "\n")
