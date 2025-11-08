# ABC431 C - Robot Factory
# See problem: https://atcoder.jp/contests/abc431/tasks/abc431_c
# 2025-11-08 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
idx <- 1
N <- input[idx]
idx <- idx + 1
M <- input[idx]
idx <- idx + 1
K <- input[idx]
idx <- idx + 1

H <- input[idx:(idx + N - 1)]
idx <- idx + N
B <- input[idx:(idx + M - 1)]

H <- sort(H)
B <- sort(B)

i <- 1
j <- 1
cnt <- 0

while (i <= N && j <= M) {
  if (H[i] <= B[j]) {
    cnt <- cnt + 1
    i <- i + 1
    j <- j + 1
  } else {
    j <- j + 1
  }
}

if (cnt >= K) {
  cat("Yes\n")
} else {
  cat("No\n")
}
