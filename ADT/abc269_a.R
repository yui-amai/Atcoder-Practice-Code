# ABC269 A - Anyway Takahashi
# https://atcoder.jp/contests/abc269/tasks/abc269_a
# 2025-07-29 AC+ (ADT　20250729　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
a <- input[1]
b <- input[2]
c <- input[3]
d <- input[4]

result <- (a + b) * (c - d)
cat(result, "\n")
cat("Takahashi\n")
