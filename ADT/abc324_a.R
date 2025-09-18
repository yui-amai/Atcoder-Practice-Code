# ABC324 A - Same
# See problem: https://atcoder.jp/contests/abc324/tasks/abc324_a
# 2025-09-18 AC+ (ADT　20250918　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

if (length(unique(A)) == 1) {
  cat("Yes\n")
} else {
  cat("No\n")
}
