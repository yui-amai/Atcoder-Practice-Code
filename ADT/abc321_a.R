# ABC321 A - 321-like Checker
# See problem: https://atcoder.jp/contests/abc321/tasks/abc321_a
# 2025-09-02 AC+ (ADT　20250902　EASY)

N <- scan("stdin", what = character(), quiet = TRUE)

d <- as.integer(strsplit(N, "")[[1]])
if (length(d) <= 1) {
  cat("Yes\n")
} else {
  ok <- all(d[-length(d)] > d[-1])
  cat(if (ok) "Yes\n" else "No\n")
}
