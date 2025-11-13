# ABC432 C - Candy Tribulation
# See problem: https://atcoder.jp/contests/abc432/tasks/abc432_c
# 2025-11-15 WA

options(scipen = 100, digits = 15)
input <- scan("stdin", what = numeric(), quiet = TRUE)

N <- input[1]
X <- input[2]
Y <- input[3]
A <- input[-(1:3)]

diff <- Y - X

x_mod <- X %% diff
res <- (x_mod * (A %% diff)) %% diff
res1 <- res[1]

if (any(res != res1)) {
  cat(-1, "\n")
  quit(save = "no")
}

XA <- X * A
YA <- Y * A
L <- max(XA)
R <- min(YA)

if (L > R) {
  cat(-1, "\n")
  quit(save = "no")
}

W <- R - ((R - res1) %% diff)
if (W < L) {
  cat(-1, "\n")
  quit(save = "no")
}

total_Y <- (N * W - X * sum(A)) / diff
cat(format(total_Y, scientific = FALSE), "\n")
