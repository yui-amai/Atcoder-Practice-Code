# ABC345 A - Leftrightarrow
# See problem: https://atcoder.jp/contests/abc345/tasks/abc345_a
# 2025-11-13 AC+ (ADT　20251113　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input[1], "")[[1]]
n <- length(S)

if (S[1] == "<" && S[n] == ">" && all(S[2:(n - 1)] == "=")) {
  cat("Yes\n")
} else {
  cat("No\n")
}
