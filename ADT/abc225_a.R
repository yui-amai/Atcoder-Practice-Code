# ABC225 A - Distinct Strings
# https://atcoder.jp/contests/abc225/tasks/abc225_a
# 2025-07-29 AC+ (ADT　20250729　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]

uni_S <- unique(S)
uni <- length(uni_S)

if (uni == 1) {
  cat("1\n")
} else if (uni == 2) {
  cat("3\n")
} else {
  cat("6\n")
}
