# ABC397 A - Thermometer
# See problem: https://atcoder.jp/contests/abc397/tasks/abc397_a
# 2025-09-16 AC+ (ADT　20250916　EASY)

X <- scan("stdin", what = numeric(), quiet = TRUE)

if (X >= 38.0) {
  cat(1, "\n")
} else if (X >= 37.5) {
  cat(2, "\n")
} else {
  cat(3, "\n")
}
