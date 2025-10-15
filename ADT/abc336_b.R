# ABC336 B - CTZ
# See problem: https://atcoder.jp/contests/abc336/tasks/abc336_b
# 2025-10-15 WA->AC+ (ADT　20251015　EASY)

N <- scan("stdin", what = integer(), quiet = TRUE)

cnt <- 0
while (N %% 2 == 0) {
  cnt <- cnt + 1
  N <- N %/% 2
}
cat(cnt)

# Count Trailing Zeros (CTZ)
# Count Leading Zeros (CLZ)
