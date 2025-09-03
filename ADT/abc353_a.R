# ABC353 A - Buildings
# See problem: https://atcoder.jp/contests/abc353/tasks/abc353_a
# 2025-09-03 AC+ (ADT　20250903　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)

N <- input[1]
H <- input[-1]

h1 <- H[1]
idx <- which(H > h1)[1]
if (is.na(idx)) cat(-1, "\n") else cat(idx, "\n")
