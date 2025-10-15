# ABC264 B - Nice Grid
# See problem: https://atcoder.jp/contests/abc264/tasks/abc264_b
# 2025-10-15 AC+ (ADT　20251015　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
R <- input[1]
C <- input[2]

n <- 15

layer <- min(R - 1, C - 1, n - R, n - C)
cat(ifelse(layer %% 2 == 0, "black", "white"))

# Parity of the minimum distance to the border
