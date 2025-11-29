# ABC434 A - Balloon Trip
# See problem: https://atcoder.jp/contests/abc434/tasks/abc434_a
# 2025-11-29 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
W <- input[1]
B <- input[2]

mass <- W * 1000
ans <- mass %/% B + 1
cat(ans, "\n")
