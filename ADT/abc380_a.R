# ABC380 A - 123233
# See problem: https://atcoder.jp/contests/abc380/tasks/abc380_a
# 2025-08-12 AC+ (ADT　20250812　EASY)

input <- scan("stdin", what = "", quiet = TRUE)[1]
N <- strsplit(input, "")[[1]]

c1 <- sum(N == "1")
c2 <- sum(N == "2")
c3 <- sum(N == "3")

if (c1 == 1 && c2 == 2 && c3 == 3) {
  cat("Yes\n")
} else {
  cat("No\n")
}
