# ABC427 A - ABC -> AC
# See problem: https://atcoder.jp/contests/abc427/tasks/abc427_a
# 2025-10-11 AC+

S <- scan("stdin", what = character(), quiet = TRUE)

n <- nchar(S)
mid <- (n + 1) %/% 2
ans <- paste0(substr(S, 1, mid - 1), substr(S, mid + 1, n))
cat(ans, "\n")
