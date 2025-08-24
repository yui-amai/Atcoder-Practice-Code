# ABC420 A - What month is it?
# See problem: https://atcoder.jp/contests/abc420/tasks/abc420_a
# 2025-08-24 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
X <- input[1]
Y <- input[2]

ans <- ((X - 1L + Y) %% 12L) + 1L
cat(ans, "\n")
