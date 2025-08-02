# ABC417 A - A Substring
# See problem: https://atcoder.jp/contests/abc417/tasks/abc417_a
# 2025-08-02 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.numeric(input[1])
A <- as.numeric(input[2])
B <- as.numeric(input[3])
S <- input[4]

ans <- substr(S, A + 1, N - B)
cat(ans, "\n")
