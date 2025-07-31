# ABC372 A - delete .
# See problem: https://atcoder.jp/contests/abc372/tasks/abc372_a
# 2025-07-31 AC+ (ADT　20250731　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- gsub("\\.", "", input)
cat(S, "\n")
