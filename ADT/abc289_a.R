# ABC289 A - flip
# See problem: https://atcoder.jp/contests/abc289/tasks/abc289_a
# 2025-11-25 AC+ (ADT　20251125　EASY)

s <- scan("stdin", what = character(), quiet = TRUE)

ans <- chartr("01", "10", s)
cat(ans, "\n")
