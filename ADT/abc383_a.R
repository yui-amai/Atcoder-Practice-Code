# ABC383 A - Humidifier 1
# See problem: https://atcoder.jp/contests/abc383/tasks/abc383_a
# 2025-09-09 AC+ (ADT　20250909　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
T <- input[seq(2, by = 2, length.out = N)]
V <- input[seq(3, by = 2, length.out = N)]

water <- 0L
prev_t <- 0L

for (i in seq_len(N)) {
  dt <- T[i] - prev_t
  water <- max(0L, water - dt)
  water <- water + V[i]
  prev_t <- T[i]
}

cat(water, "\n")
