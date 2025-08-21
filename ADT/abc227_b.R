# ABC227 B - KEYENCE building
# See problem: https://atcoder.jp/contests/abc227/tasks/abc227_b
# 2025-08-21 AC+ (ADT　20250821　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
S <- input[-1]

L <- max(S)
ok <- logical(L)
for (a in 1:1000) {
  if (7L * a + 3L > L) break
  for (b in 1:1000) {
    v <- 4L * a * b + 3L * a + 3L * b
    if (v > L) break
    ok[v] <- TRUE
  }
}

cat(sum(!ok[S]), "\n")
