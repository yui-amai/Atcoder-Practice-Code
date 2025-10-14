# ABC242 C - 1111gal password
# See problem: https://atcoder.jp/contests/abc242/tasks/abc242_c
# 2025-10-14 AC+ (ADT　20251014　EASY)

options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)

mod <- 998244353
dp <- rep(1.0, 9)

if (N > 1) {
  for (step in 2:N) {
    nxt <- numeric(9)
    nxt[1] <- (dp[1] + dp[2]) %% mod
    for (d in 2:8) {
      nxt[d] <- (dp[d - 1] + dp[d] + dp[d + 1]) %% mod
    }
    nxt[9] <- (dp[8] + dp[9]) %% mod
    dp <- nxt
  }
}

ans <- sum(dp) %% mod
cat(as.integer(ans), "\n")


# A faster solution

options(scipen = 100, digits = 15)
N <- scan("stdin", what = integer(), quiet = TRUE)[1]

mod <- 998244353
dp <- rep(1.0, 9)
nxt <- numeric(9)

if (N > 1) {
  for (step in 2:N) {
    nxt[1] <- dp[1] + dp[2]
    for (d in 2:8) {
      nxt[d] <- dp[d - 1] + dp[d] + dp[d + 1]
    }
    nxt[9] <- dp[8] + dp[9]

    nxt <- nxt %% mod
    dp[] <- nxt
  }
}

ans <- sum(dp) %% mod
cat(as.integer(ans), "\n")
