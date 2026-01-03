# ABC438 A - First Contest of the Year
# See problem: https://atcoder.jp/contests/abc438/tasks/abc438_a
# 2025-12-27 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)

D <- input[1]
F <- input[2]

r <- D %% 7
ans <- ((F - r - 1) %% 7) + 1

cat(ans, "\n")
