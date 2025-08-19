# ABC405 B - Not All
# See problem: https://atcoder.jp/contests/abc405/tasks/abc405_b
# 2025-08-19 AC+ (ADT　20250819　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[-(1:2)]

seen <- rep(FALSE, M)
cnt <- 0L
K <- NA_integer_

for (i in 1:N) {
  ai <- A[i]
  if (!seen[ai]) {
    seen[ai] <- TRUE
    cnt <- cnt + 1L
    if (cnt == M) {
      K <- i
      break
    }
  }
}

if (is.na(K)) {
  cat("0\n")
} else {
  cat(N - K + 1L, "\n")
}
