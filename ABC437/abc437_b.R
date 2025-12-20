# ABC437 B - Tombola
# See problem: https://atcoder.jp/contests/abc437/tasks/abc437_b
# 2025-12-20 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)

H <- input[1]
W <- input[2]
N <- input[3]

idx <- 4
mat <- matrix(input[idx:(idx + H * W - 1)], nrow = H, byrow = TRUE)
idx <- idx + H * W

Ns <- input[idx:(idx + N - 1)]
pres <- rep(FALSE, 91)
pres[Ns] <- TRUE

M <- matrix(pres[mat], nrow = H, ncol = W)
ans <- max(rowSums(M))

cat(ans, "\n")
