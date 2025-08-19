# ABC259 A - Growth Record
# See problem: https://atcoder.jp/contests/abc259/tasks/abc259_a
# 2025-08-14 AC+ (ADT　20250814　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
X <- input[3]
T <- input[4]
D <- input[5]

cat(T - D * max(0L, X - M), "\n")
