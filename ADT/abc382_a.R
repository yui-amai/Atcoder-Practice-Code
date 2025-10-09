# ABC382 A - Daily Cookie
# See problem: https://atcoder.jp/contests/abc382/tasks/abc382_a
# 2025-10-09 AC+ (ADT　20251009　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
D <- as.integer(input[2])
S <- strsplit(input[3], "")[[1]]

cookie <- sum(S == "@")
empty <- sum(S == ".")

ans <- empty + D
cat(ans, "\n")
