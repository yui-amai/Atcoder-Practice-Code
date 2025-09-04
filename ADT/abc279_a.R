# ABC279 A - wwwvvvvvv
# See problem: https://atcoder.jp/contests/abc279/tasks/abc279_a
# 2025-09-04 AC+ (ADT　20250904　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

S <- strsplit(input, "")[[1]]
ans <- sum(S == "v") + 2 * sum(S == "w")
cat(ans, "\n")
