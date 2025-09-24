# ABC362 B - Right Triangle
# See problem: https://atcoder.jp/contests/abc362/tasks/abc362_b
# 2025-09-24 AC+ (ADT　20250924　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
x_a <- input[1]
y_a <- input[2]
x_b <- input[3]
y_b <- input[4]
x_c <- input[5]
y_c <- input[6]

ab2 <- (x_a - x_b)^2 + (y_a - y_b)^2
bc2 <- (x_b - x_c)^2 + (y_b - y_c)^2
ca2 <- (x_c - x_a)^2 + (y_c - y_a)^2

s <- sort(c(ab2, bc2, ca2))
cat(if (s[1] + s[2] == s[3]) "Yes\n" else "No\n")
