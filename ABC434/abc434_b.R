# ABC434 B - Bird Watching
# See problem: https://atcoder.jp/contests/abc434/tasks/abc434_b
# 2025-11-29 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
A <- input[seq(3, by = 2, length.out = N)]
B <- input[seq(4, by = 2, length.out = N)]

sum_size <- numeric(M)
cnt <- integer(M)
for (i in seq_len(N)) {
  k <- A[i]
  sum_size[k] <- sum_size[k] + B[i]
  cnt[k] <- cnt[k] + 1
}

avg <- sum_size / cnt
cat(sprintf("%.10f\n", avg), sep = "")
