# ABC337 A - Scoreboard
# See problem: https://atcoder.jp/contests/abc337/tasks/abc337_a
# 2026-01-06 AC+ (ADT　20260106　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
X <- input[seq(2, 2 * N, by = 2)]
Y <- input[seq(3, 2 * N + 1, by = 2)]

sum_X <- sum(X)
sum_Y <- sum(Y)

cat(if (sum_X > sum_Y) "Takahashi" else if (sum_X < sum_Y) "Aoki" else "Draw")
