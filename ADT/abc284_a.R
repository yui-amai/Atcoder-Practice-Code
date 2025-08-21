# ABC284 A - Sequence of Strings
# See problem: https://atcoder.jp/contests/abc284/tasks/abc284_a
# 2025-08-21 AC+ (ADT　20250821　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[-1]
cat(rev(S), sep = "\n")
