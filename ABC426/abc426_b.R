# ABC426 B - The Odd One Out
# See problem: https://atcoder.jp/contests/abc426/tasks/abc426_b
# 2025-10-04 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "", fixed = TRUE)[[1]]

cnt <- table(S)
ans <- names(cnt)[cnt == 1]
cat(ans, "\n")
