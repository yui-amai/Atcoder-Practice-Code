# ABC242 A - T-shirt
# See problem: https://atcoder.jp/contests/abc242/tasks/abc242_a
# 2025-08-06 AC+ (ADT　20250806　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
C <- input[3]
X <- input[4]

ans <- if (X <= A) {
  1
} else if (X <= B) {
  C / (B - A)
} else {
  0
}

cat(ans, "\n")
