# ABC413 A - Contest Too Large
# See problem: https://atcoder.jp/contests/abc413/tasks/abc413_a
# 2025-07-08 AC-

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[3:(2 + N)]

if (sum(A) <= M) {
  cat("Yes\n")
} else {
  cat("No\n")
}
