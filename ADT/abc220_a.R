# ABC220 A - Find Multiple
# See problem: https://atcoder.jp/contests/abc220/tasks/abc220_a
# 2025-08-06 WA->AC+ (ADT　20250806　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
A <- input[1]
B <- input[2]
C <- input[3]

ac <- ceiling(A / C) * C

if (ac >= A && ac <= B) {
  cat(ac, "\n")
} else {
  cat(-1, "\n")
}
