# ABC248 B - Slimes
# See problem: https://atcoder.jp/contests/abc248/tasks/abc248_b
# 2025-09-03 AC+ (ADT　20250903　EASY)

input <- scan("stdin", what = numeric(), quiet = TRUE)

A <- input[1]
B <- input[2]
K <- input[3]

cnt <- 0L
slm <- A
while (slm < B) {
  slm <- slm * K
  cnt <- cnt + 1L
}
cat(cnt, "\n")
