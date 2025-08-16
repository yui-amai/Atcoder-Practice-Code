# ABC419 D - Substr Swap
# See problem: https://atcoder.jp/contests/abc419/tasks/abc419_d
# 2025-08-16 AC+

options(scipen = 100)
input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
M <- as.integer(input[2])
S <- strsplit(input[3], "", fixed = TRUE)[[1]]
T <- strsplit(input[4], "", fixed = TRUE)[[1]]

nums <- as.integer(input[-(1:4)])
L <- nums[seq(1, 2 * M, by = 2)]
R <- nums[seq(2, 2 * M, by = 2)]

diff <- integer(N + 1L)
diff <- diff + tabulate(L, nbins = N + 1L)
diff <- diff - tabulate(R + 1, nbins = N + 1L)

parity <- cumsum(diff[1:N]) %% 2L
ans <- ifelse(parity == 0L, S, T)

cat(paste(ans, collapse = ""), "\n")
