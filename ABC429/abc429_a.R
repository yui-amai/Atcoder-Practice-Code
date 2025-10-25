# ABC429 A - Too Many Requests
# See problem: https://atcoder.jp/contests/abc429/tasks/abc429_a
# 2025-10-25 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]

for (i in 1:N) {
  if (i <= M) {
    cat("OK\n")
  } else {
    cat("Too Many Requests\n")
  }
}
