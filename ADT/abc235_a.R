# ABC235 A - Rotate
# See problem: https://atcoder.jp/contests/abc235/tasks/abc235_a
# 2025-09-17 AC+ (ADT　20250917　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
abc <- as.integer(strsplit(input, "")[[1]])
ans <- 111 * sum(abc)
cat(ans, "\n")
