# ABC320 A - Leyland Number
# See problem: https://atcoder.jp/contests/abc320/tasks/abc320_a
# 2025-10-21 AC+ (ADT　20251021　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]

ans <- A^B + B^A
cat(ans, "\n")
