# ABC232 A - QQ solver
# See problem: https://atcoder.jp/contests/abc232/tasks/abc232_a
# 2025-08-28 AC+ (ADT　20250828　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(trimws(input), "x")[[1]]
a <- as.integer(S[1])
b <- as.integer(S[2])
cat(a * b, "\n")
