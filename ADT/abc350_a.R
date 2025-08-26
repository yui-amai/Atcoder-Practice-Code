# ABC350 A - Past ABCs
# See problem: https://atcoder.jp/contests/abc350/tasks/abc350_a
# 2025-08-26 AC+ (ADT　20250826　EASY)

S <- scan("stdin", what = character(), quiet = TRUE)

num <- as.integer(substr(S, 4, 6))
if (1 <= num && num <= 349 && num != 316) cat("Yes\n") else cat("No\n")
