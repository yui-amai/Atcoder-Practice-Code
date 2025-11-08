# ABC431 B - Robot Weight
# See problem: https://atcoder.jp/contests/abc431/tasks/abc431_b
# 2025-11-08 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
idx <- 1
X <- input[idx]
idx <- idx + 1
N <- input[idx]
idx <- idx + 1
W <- input[idx:(idx + N - 1)]
idx <- idx + N
Q <- input[idx]
idx <- idx + 1
P <- input[idx:(idx + Q - 1)]

add <- rep(FALSE, N)
cur <- X

for (p in P) {
  if (!add[p]) {
    add[p] <- TRUE
    cur <- cur + W[p]
  } else {
    add[p] <- FALSE
    cur <- cur - W[p]
  }
  cat(cur, "\n")
}
