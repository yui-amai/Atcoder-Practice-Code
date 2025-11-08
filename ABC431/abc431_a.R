# ABC431 A - Robot Balance
# See problem: https://atcoder.jp/contests/abc431/tasks/abc431_a
# 2025-11-08 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
H <- input[1]
B <- input[2]

ans <- max(0, H - B)
cat(ans, "\n")
