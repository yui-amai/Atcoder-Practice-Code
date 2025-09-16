# ABC314 A - 3.14
# See problem: https://atcoder.jp/contests/abc314/tasks/abc314_a
# 2025-09-16 AC+ (ADT　20250916　EASY)

N <- scan("stdin", what = integer(), quiet = TRUE)

pi100 <- "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
ans <- substr(pi100, 1, 2 + N)
cat(ans, "\n")
