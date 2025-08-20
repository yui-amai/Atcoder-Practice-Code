# ABC251 A - Six Characters
# See problem: https://atcoder.jp/contests/abc251/tasks/abc251_a
# 2025-08-20 AC+ (ADT　20250820　EASY)

S <- scan("stdin", what = "", quiet = TRUE, nmax = 1L)
cat(strrep(S, 6L %/% nchar(S)), "\n")
