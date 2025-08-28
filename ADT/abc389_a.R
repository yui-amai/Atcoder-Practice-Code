# ABC389 A - 9x9
# See problem: https://atcoder.jp/contests/abc389/tasks/abc389_a
# 2025-08-28 AC+ (ADT　20250828　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(trimws(input), "x")[[1]]
a <- as.integer(S[1])
b <- as.integer(S[2])
cat(a * b, "\n")

# Just the same as ABC232_A
