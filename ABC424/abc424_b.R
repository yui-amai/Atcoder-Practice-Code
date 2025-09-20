# ABC424 B - Perfect
# See problem: https://atcoder.jp/contests/abc424/tasks/abc424_b
# 2025-09-20 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
K <- input[3]
A <- input[seq(4, by = 2, length.out = K)]
B <- input[seq(5, by = 2, length.out = K)]

cnt <- integer(N)
finish <- rep(0L, N)
for (i in seq_len(K)) {
  ai <- A[i]
  cnt[ai] <- cnt[ai] + 1L
  if (cnt[ai] == M && finish[ai] == 0L) finish[ai] <- i
}

idx <- which(finish > 0L)
if (length(idx) > 0L) {
  ord <- order(finish[idx])
  cat(idx[ord], sep = " ", "\n")
}
