# ABC301 A - Overall Winner
# See problem: https://atcoder.jp/contests/abc301/tasks/abc301_a
# 2025-11-04 AC+ (ADT　20251104　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

t <- sum(S == "T")
a <- sum(S == "A")

if (t > a) {
  cat("T\n")
} else if (a > t) {
  cat("A\n")
} else {
  last <- tail(S, 1)
  if (last == "T") cat("A\n") else cat("T\n")
}
