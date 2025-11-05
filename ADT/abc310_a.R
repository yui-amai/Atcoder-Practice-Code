# ABC310 A - Order Something Else
# See problem: https://atcoder.jp/contests/abc310/tasks/abc310_a
# 2025-11-05 AC+ (ADT　20251105　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
P <- input[2]
Q <- input[3]
D <- input[-(1:3)]

discount <- Q + min(D)
ans <- min(discount, P)
cat(ans, "\n")
