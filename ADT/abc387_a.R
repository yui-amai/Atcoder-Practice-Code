# ABC387 A - Happy New Year 2025
# See problem: https://atcoder.jp/contests/abc387/tasks/abc387_a
# 2025-11-18 AC+ (ADT　20251118　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]

ans <- (A + B)^2
cat(ans, "\n")
