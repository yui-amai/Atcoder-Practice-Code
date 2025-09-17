# ABC351 A - tcdr
# See problem: https://atcoder.jp/contests/abc351/tasks/abc351_a
# 2025-09-17 AC+ (ADT　20250917　EASY)

S <- scan("stdin", what = character(), quiet = TRUE)
ans <- gsub("[aeiou]", "", S)
cat(ans, "\n")
