# ABC280 A - Pawn on a Grid
# See problem: https://atcoder.jp/contests/abc280/tasks/abc280_a
# 2025-08-19 AC+ (ADT　20250819　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

H <- as.integer(input[1])
W <- as.integer(input[2])
S <- input[-(1:2)]

cat(sum(unlist(strsplit(S, "")) == "#"), "\n")
