# ABC323 A - Weak Beats
# See problem: https://atcoder.jp/contests/abc323/tasks/abc323_a
# 2025-11-26 AC+ (ADT　20251126　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]

even_S <- S[seq(2, 16, 2)]

if (all(even_S == "0")) {
  cat("Yes\n")
} else {
  cat("No\n")
}
