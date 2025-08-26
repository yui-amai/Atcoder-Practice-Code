# ABC282 B - Let's Get a Perfect Score
# See problem: https://atcoder.jp/contests/abc282/tasks/abc282_b
# 2025-08-26 AC+ (ADT　20250826　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
M <- as.integer(input[2])
S <- input[-(1:2)]

mask <- integer(N)
for (i in seq_len(N)) {
  m <- 0L
  cs <- strsplit(S[i], "", fixed = TRUE)[[1]]
  for (j in seq_len(M)) {
    if (cs[j] == "o") m <- bitwOr(m, bitwShiftL(1L, j - 1L))
  }
  mask[i] <- m
}

full <- bitwShiftL(1L, M) - 1L
ans <- 0L
for (i in 1:(N - 1L)) {
  for (k in (i + 1L):N) {
    if (bitwOr(mask[i], mask[k]) == full) ans <- ans + 1L
  }
}

cat(ans, "\n")


# By matrix multiplication

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
M <- as.integer(input[2])
S <- input[-(1:2)]

mat <- do.call(rbind, strsplit(S, "", fixed = TRUE))
NG <- (mat == "x")
P <- (NG * 1L) %*% t(NG * 1L)
OK <- (P == 0)

ans <- sum(OK[upper.tri(OK, diag = FALSE)])
cat(ans, "\n")
