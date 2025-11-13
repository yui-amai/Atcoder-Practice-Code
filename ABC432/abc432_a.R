# ABC432 A - Permute to Maximize
# See problem: https://atcoder.jp/contests/abc432/tasks/abc432_a
# 2025-11-15 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)

abc <- sort(input, decreasing = TRUE)
ans <- abc[1] * 100 + abc[2] * 10 + abc[3]
cat(ans, "\n")
