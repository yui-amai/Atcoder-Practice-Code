# ABC393 A - Poisonous Oyster
# See problem: https://atcoder.jp/contests/abc393/tasks/abc393_a
# 2025-08-27 AC+ (ADT　20250827　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S1 <- input[1]
S2 <- input[2]
t1 <- S1 == "sick"
t2 <- S2 == "sick"

if (t1 && t2) {
  ans <- 1
} else if (t1 && !t2) {
  ans <- 2
} else if (!t1 && t2) {
  ans <- 3
} else {
  ans <- 4
}
cat(ans, "\n")
