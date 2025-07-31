# ABC317 A - Potions
# See problem: https://atcoder.jp/contests/abc317/tasks/abc317_a
# 2025-07-31 AC+ (ADT　20250731　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
H <- input[2]
X <- input[3]
P <- input[-(1:3)]

ans <- which(P + H >= X)[1]
cat(ans, "\n")
