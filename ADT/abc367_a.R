# ABC367 A - Shout Everyday
# See problem: https://atcoder.jp/contests/abc367/tasks/abc367_a
# 2025-09-18 AC+ (ADT　20250918　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
C <- input[3]

awake <- if (C < B) {
  A >= C & A < B
} else {
  A >= C | A < B
}

if (awake) {
  cat("Yes\n")
} else {
  cat("No\n")
}
