# ABC257 A - A to Z String 2
# See problem: https://atcoder.jp/contests/abc257/tasks/abc257_a
# 2025-11-27 AC+ (ADT　20251127　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
X <- input[2]

idx <- ceiling(X / N)
alphabet <- toupper(letters)
cat(alphabet[idx], "\n")
