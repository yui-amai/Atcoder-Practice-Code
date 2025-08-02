# ABC417 B - Search and Delete
# See problem: https://atcoder.jp/contests/abc417/tasks/abc417_b
# 2025-08-02 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[3:(N + 2)]
B <- input[(N + 3):(N + M + 2)]

for (i in B) {
  idx <- match(i, A)
  if (!is.na(idx)) {
    A <- A[-idx]
  }
}

cat(A, "\n")
