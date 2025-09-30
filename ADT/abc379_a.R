# ABC379 A - Cyclic
# See problem: https://atcoder.jp/contests/abc379/tasks/abc379_a
# 2025-09-30 AC+ (ADT　20250930　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- strsplit(input, "")[[1]]

a <- N[1]
b <- N[2]
c <- N[3]

cat(b, c, a, sep = "", " ")
cat(c, a, b, sep = "", "\n")
