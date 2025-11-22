# ABC433 B - Nearest Taller
# See problem: https://atcoder.jp/contests/abc433/tasks/abc433_b
# 2025-11-22 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

tall <- integer(0)
ans <- rep(-1, N)

for (i in 1:N) {
  while (length(tall) > 0 && A[tall[length(tall)]] <= A[i]) {
    tall <- tall[-length(tall)]
  }
  if (length(tall) > 0) ans[i] <- tall[length(tall)]
  tall <- c(tall, i)
}

cat(ans, sep = "\n")
