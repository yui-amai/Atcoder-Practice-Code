# ABC296 A - Alternately
# See problem: https://atcoder.jp/contests/abc296/tasks/abc296_a
# 2025-10-15 AC+ (ADT　20251015　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

ans <- all(S[-1] != S[-length(S)])

cat(if (ans) "Yes" else "No")
