# ABC252 B - Takahashi's Failure
# See problem: https://atcoder.jp/contests/abc252/tasks/abc252_b
# 2025-08-12 AC+ (ADT　20250812　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
K <- input[2]
A <- input[3:(N + 2)]
B <- input[(N + 3):(N + K + 2)]

maxA <- max(A)
choice <- which(A == maxA)
if (any(choice %in% B)) {
  cat("Yes\n")
} else {
  cat("No\n")
}
