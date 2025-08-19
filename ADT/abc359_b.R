# ABC359 B - Couples
# See problem: https://atcoder.jp/contests/abc359/tasks/abc359_b
# 2025-08-14 AC+ (ADT　20250814　EASY)

input <- scan("stdin", quiet = TRUE)
N <- input[1]
A <- input[-1]

first <- integer(N)
ans <- 0L

for (i in seq_len(2 * N)) {
  c <- A[i]
  if (first[c] == 0L) {
    first[c] <- i
  } else {
    if (i - first[c] == 2L) ans <- ans + 1L
  }
}

cat(ans, "\n")
