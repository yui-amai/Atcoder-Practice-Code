# ABC306 C - Centers
# See problem: https://atcoder.jp/contests/abc306/tasks/abc306_c
# 2025-09-16 TLE->AC+ (ADT　20250916　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

cnt <- integer(N)
second_pos <- integer(N)

for (j in seq_along(A)) {
  x <- A[j]
  cnt[x] <- cnt[x] + 1L
  if (cnt[x] == 2L) second_pos[x] <- j
}

ord <- order(second_pos)
cat(ord, sep = " ")
