# ABC339 A - TLD
# See problem: https://atcoder.jp/contests/abc339/tasks/abc339_a
# 2025-07-30 AC+ (ADT　20250730　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
parts <- strsplit(input, ".", fixed = TRUE)[[1]]
tld <- parts[length(parts)]
cat(tld, "\n")
