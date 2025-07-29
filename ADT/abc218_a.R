# ABC218 A - Weather Forecast
# See problem: https://atcoder.jp/contests/abc218/tasks/abc218_a
# 2025-07-24 AC+ (ADT　20250724　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

if (S[N] == "o") {
  cat("Yes\n")
} else {
  cat("No\n")
}
