# ABC437 C - Reindeer and Sleigh 2
# See problem: https://atcoder.jp/contests/abc437/tasks/abc437_c
# 2025-12-20 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = numeric(), quiet = TRUE)
T <- input[1]
idx <- 2

ans <- integer(T)
for (t in 1:T) {
  N <- input[idx]
  idx <- idx + 1
  case <- input[idx:(idx + 2 * N - 1)]
  idx <- idx + 2 * N
  W <- case[seq.int(1, 2 * N, by = 2)]
  P <- case[seq.int(2, 2 * N, by = 2)]
  sum_P <- sum(P)
  cost <- W + P
  cost <- sort.int(cost, method = "quick")
  ans[t] <- sum(cumsum(cost) <= sum_P)
}

cat(paste(ans, collapse = "\n"), "\n")
