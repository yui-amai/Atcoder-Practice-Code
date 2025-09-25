# ABC266 A - Middle Letter
# See problem: https://atcoder.jp/contests/abc266/tasks/abc266_a
# 2025-09-25 AC+ (ADT　20250925　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]

len_S <- length(S)
cat(S[(len_S + 1) / 2], "\n")
