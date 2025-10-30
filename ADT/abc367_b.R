# ABC367 B - Cut .0
# See problem: https://atcoder.jp/contests/abc367/tasks/abc367_b
# 2025-10-29 AC+ (ADT　20251029　EASY)

S <- scan("stdin", what = character(), quiet = TRUE)

if (grepl("\\.", S)) {
  S <- sub("0+$", "", S)
  S <- sub("\\.$", "", S)
}

cat(S, "\n")
