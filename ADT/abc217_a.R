# ABC217 A - Lexicographic Order
# See problem: https://atcoder.jp/contests/abc217/tasks/abc217_a
# 2025-11-12 AC+ (ADT　20251112　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- input[1]
T <- input[2]
cat(if (S < T) "Yes\n" else "No\n")
