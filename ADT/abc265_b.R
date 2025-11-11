# ABC265 B - Explore
# See problem: https://atcoder.jp/contests/abc265/tasks/abc265_b
# 2025-11-11 AC+ (ADT　20251111　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
T <- input[3]
A <- input[4:(N + 2)]

if (M > 0) {
  X <- input[seq(N + 3, by = 2, length.out = M)]
  Y <- input[seq(N + 4, by = 2, length.out = M)]
} else {
  X <- integer(0)
  Y <- numeric(0)
}

bonus <- numeric(N)
if (M > 0) bonus[X] <- Y

for (i in 1:(N - 1)) {
  T <- T - A[i]
  if (T <= 0) {
    cat("No\n")
    quit(save = "no")
  }
  T <- T + bonus[i + 1]
}

cat("Yes\n")
