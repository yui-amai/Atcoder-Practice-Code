# ABC309 A - Nine
# See problem: https://atcoder.jp/contests/abc309/tasks/abc309_a
# 2025-08-19 AC+ (ADT　20250819　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]

if (B == A + 1 && A %% 3 != 0) cat("Yes\n") else cat("No\n")
