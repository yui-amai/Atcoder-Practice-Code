# ABC340 A -
# See problem: https://atcoder.jp/contests/abc340/tasks/abc340_a
# 2025-12-18 AC+ (ADT　20251218　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
D <- input[3]

ans <- seq(from = A, to = B, by = D)
cat(paste(ans, collapse = " "), "\n")
