# ABC370 B - Binary Alchemy
# See problem: https://atcoder.jp/contests/abc370/tasks/abc370_b
# 2025-08-27 RE->AC+ (ADT　20250827　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]

t <- 2
A <- vector("list", N)
for (i in 1:N) {
  A[[i]] <- input[t:(t + i - 1L)]
  t <- t + i
}
alc <- 1
for (k in 1:N) {
  if (alc >= k) alc <- A[[alc]][k] else alc <- A[[k]][alc]
}

cat(alc, "\n")
