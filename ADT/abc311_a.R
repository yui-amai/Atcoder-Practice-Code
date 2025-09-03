# ABC311 A - First ABC
# See problem: https://atcoder.jp/contests/abc311/tasks/abc311_a
# 2025-09-03 AC+ (ADT　20250903　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
S <- input[2]

idx <- max(
  as.integer(regexpr("A", S)),
  as.integer(regexpr("B", S)),
  as.integer(regexpr("C", S))
)
cat(idx, "\n")
