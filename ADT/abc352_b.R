# ABC352 B - Typing
# See problem: https://atcoder.jp/contests/abc352/tasks/abc352_b
# 2025-10-16 WA->AC+ (ADT　20251016　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input[1], "")[[1]]
T <- strsplit(input[2], "")[[1]]

n <- length(S)
m <- length(T)
idx <- integer(n)
j <- 1

for (i in 1:m) {
  if (j <= n && S[j] == T[i]) {
    idx[j] <- i
    j <- j + 1
  }
}
cat(idx, sep = " ")
