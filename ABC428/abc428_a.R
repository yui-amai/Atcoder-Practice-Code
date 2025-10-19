# ABC428 A - Grandma's Footsteps
# See problem: https://atcoder.jp/contests/abc428/tasks/abc428_a
# 2025-10-18 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
S <- input[1]
A <- input[2]
B <- input[3]
X <- input[4]

cycle <- A + B
full <- X %/% cycle
rem <- X %% cycle
run_t <- min(rem, A)

ans <- S * (full * A + run_t)
cat(ans, "\n")
