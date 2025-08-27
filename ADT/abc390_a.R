# ABC390 A - 12345
# See problem: https://atcoder.jp/contests/abc390/tasks/abc390_a
# 2025-08-27 AC+ (ADT　20250827　EASY)

A <- scan("stdin", what = integer(), quiet = TRUE)

inv <- 0L
for (i in 1:4) {
  for (j in (i + 1):5) {
    inv <- inv + as.integer(A[i] > A[j])
  }
}
cat(if (inv == 1) "Yes\n" else "No\n")
