# ABC370 A - Raise Both Hands
# See problem: https://atcoder.jp/contests/abc370/tasks/abc370_a
# 2025-11-05 AC+ (ADT　20251105　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
L <- input[1]
R <- input[2]

if (L == 1 && R == 0) {
  cat("Yes\n")
} else if (L == 0 && R == 1) {
  cat("No\n")
} else {
  cat("Invalid\n")
}
