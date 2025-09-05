# ABC418 A - I'm a teapot
# See problem: https://atcoder.jp/contests/abc418/tasks/abc418_a
# 2025-08-09 AC+

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
S <- input[2]

if (endsWith(S, "tea")) cat("Yes\n") else cat("No\n")
