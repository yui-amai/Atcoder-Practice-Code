# ABC438 C - 1D puyopuyo
# See problem: https://atcoder.jp/contests/abc438/tasks/abc438_c
# 2025-12-27 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

val <- integer(N)
cnt <- integer(N)
top <- 0L
len <- 0L

for (i in seq_len(N)) {
  a <- A[i]
  len <- len + 1L

  if (top > 0L && val[top] == a) {
    cnt[top] <- cnt[top] + 1L
    if (cnt[top] == 4L) {
      top <- top - 1L
      len <- len - 4L
    }
  } else {
    top <- top + 1L
    val[top] <- a
    cnt[top] <- 1L
  }
}

cat(len, "\n")
