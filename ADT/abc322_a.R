# ABC322 A - First ABC 2
# See problem: https://atcoder.jp/contests/abc322/tasks/abc322_a
# 2025-08-05 AC+ (ADT　20250805　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.numeric(input[1])
S <- input[2]

pos <- regexpr("ABC", S, fixed = TRUE)[1]
cat(pos, "\n")
