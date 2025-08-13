# ABC221 B - typo
# See problem: https://atcoder.jp/contests/abc221/tasks/abc221_b
# 2025-08-13 AC+ (ADT　20250813　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- input[1]
T <- input[2]

sr <- charToRaw(S)
tr <- charToRaw(T)

if (identical(sr, tr)) {
  cat("Yes\n")
  quit(save = "no")
}

idx <- which(sr != tr)

ok <- length(idx) == 2 &&
  idx[2] == idx[1] + 1 &&
  sr[idx[1]] == tr[idx[2]] &&
  sr[idx[2]] == tr[idx[1]]

cat(if (ok) "Yes\n" else "No\n")
