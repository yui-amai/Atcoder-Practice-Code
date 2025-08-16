# ABC419 B - Get Min
# See problem: https://atcoder.jp/contests/abc419/tasks/abc419_b
# 2025-08-16 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
Q <- input[1]

bag <- integer(0)
idx <- 2
ans <- integer(0)

for (i in seq_len(Q)) {
  t <- input[idx]
  idx <- idx + 1
  if (t == 1) {
    x <- input[idx]
    idx <- idx + 1
    bag <- c(bag, x)
  } else {
    j <- which.min(bag)
    ans <- c(ans, bag[j])
    bag <- bag[-j]
  }
}

cat(paste(ans, collapse = "\n"), "\n")
