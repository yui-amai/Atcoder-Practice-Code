# ABC435 B - No-Divisible Range
# See problem: https://atcoder.jp/contests/abc435/tasks/abc435_b
# 2025-12-06 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

ans <- 0
for (l in 1:N) {
  sum_sub <- 0
  for (r in l:N) {
    sum_sub <- sum_sub + A[r]
    ok <- TRUE
    for (i in l:r) {
      if (sum_sub %% A[i] == 0) {
        ok <- FALSE
        break
      }
    }
    if (ok) {
      ans <- ans + 1
    }
  }
}
cat(ans, "\n")
