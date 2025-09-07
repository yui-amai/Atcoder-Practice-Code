# ABC422 C - AtCoder AAC Contest
# See problem: https://atcoder.jp/contests/abc422/tasks/abc422_c
# 2025-09-07 WA->AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
T <- input[1]

a <- input[seq(2, length(input), by = 3L)]
b <- input[seq(3, length(input), by = 3L)]
c <- input[seq(4, length(input), by = 3L)]

abc <- pmin(a, b, c)
a <- a - abc
b <- b - abc
c <- c - abc

aac_acc <- pmin(a, c, (a + c) %/% 3L)

ans <- abc + aac_acc
cat(ans, sep = "\n")
