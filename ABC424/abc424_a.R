# ABC424 A - Isosceles
# See problem: https://atcoder.jp/contests/abc424/tasks/abc424_a
# 2025-09-20 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
C <- input[3]

isosceles <- (A == B) || (A == C) || (B == C)

cat(if (isosceles) "Yes" else "No")
cat("\n")
