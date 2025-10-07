# ABC385 A - Equally
# See problem: https://atcoder.jp/contests/abc385/tasks/abc385_a
# 2025-10-07 WA->AC+ (ADT　20251007　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)

A <- input[1]
B <- input[2]
C <- input[3]

if (A + B == C | A + C == B | B + C == A | A == B && A == C) cat("Yes\n") else cat("No\n")
