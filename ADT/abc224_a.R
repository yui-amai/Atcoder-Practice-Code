# ABC224 A - Tires
# See problem: https://atcoder.jp/contests/abc224/tasks/abc224_a
# 2025-07-24 AC+ (ADT　20250724　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]

if (S[length(S)] == "r") {
  cat("er\n")
} else {
  cat("ist\n")
}
