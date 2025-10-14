# ABC364 A - Glutton Takahashi
# See problem: https://atcoder.jp/contests/abc364/tasks/abc364_a
# 2025-10-14 AC+ (ADT　20251014　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[-1]

if (N <= 2) {
  cat("Yes\n")
} else {
  sweet <- (S == "sweet")
  bad <- any(sweet[1:(N - 2)] & sweet[2:(N - 1)])
  cat(if (bad) "No" else "Yes", "\n")
}
