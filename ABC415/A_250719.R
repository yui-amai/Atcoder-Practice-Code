# ABC415 A - 	Unsupported Type
# See problem: https://atcoder.jp/contests/abc415/tasks/abc415_a

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[2:(N + 1)]
X <- input[N + 2]

if (X %in% A) {
  cat("Yes\n")
} else {
  cat("No\n")
}
