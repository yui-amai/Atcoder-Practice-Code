# ABC421 C - Alternated
# See problem: https://atcoder.jp/contests/abc421/tasks/abc421_c
# 2025-08-30 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

pos_A <- which(S == "A")

pattern1 <- seq(1, 2 * N - 1, by = 2)
cost1 <- sum(abs(pos_A - pattern1))

pattern2 <- seq(2, 2 * N, by = 2)
cost2 <- sum(abs(pos_A - pattern2))

cat(min(cost1, cost2), "\n")
