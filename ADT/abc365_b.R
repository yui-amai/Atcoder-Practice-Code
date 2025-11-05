# ABC365 B - Second Best
# See problem: https://atcoder.jp/contests/abc365/tasks/abc365_b
# 2025-11-05 AC+ (ADT　20251105　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

ans <- which(A == sort(A, decreasing = TRUE)[2])
cat(ans, "\n")
