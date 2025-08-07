# ABC217 B - AtCoder Quiz
# See problem: https://atcoder.jp/contests/abc217/tasks/abc217_b
# 2025-08-07 AC+ (ADT　20250807　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

all <- c("ABC", "ARC", "AGC", "AHC")
ans <- setdiff(all, input)
cat(ans, "\n")
