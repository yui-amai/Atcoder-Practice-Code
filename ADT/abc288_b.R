# ABC288 B - Qualification Contest
# See problem: https://atcoder.jp/contests/abc288/tasks/abc288_b
# 2025-10-28 AC+ (ADT　20251028　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
K <- as.integer(input[2])
S <- input[-(1:2)]

ans <- sort(S[1:K])
cat(ans, sep = "\n", "\n")
