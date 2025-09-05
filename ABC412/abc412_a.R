# ABC412 A - Task Failed Successfully
# See problem: https://atcoder.jp/contests/abc412/tasks/abc412_a
# 2025-06-28 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[seq(2, length(input), by = 2)]
B <- input[seq(3, length(input), by = 2)]

result <- sum(B > A)
cat(result, "\n")
