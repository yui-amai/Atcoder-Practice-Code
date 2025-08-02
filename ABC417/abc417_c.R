# ABC417 C - Distance Indicators
# See problem: https://atcoder.jp/contests/abc417/tasks/abc417_c
# 2025-08-02 AC-

input <- scan("stdin", what = numeric(), quiet = TRUE)
N <- input[1]
A <- input[-1]

i <- seq_len(N)
L <- i + A
R <- i - A
tL <- table(L)
tR <- table(R)

common <- intersect(names(tL), names(tR))
ans <- sum(as.numeric(tL[common]) * as.numeric(tR[common]))
cat(format(ans, scientific = FALSE), "\n")

## numeric()......!! scientific = FALSE......!!
