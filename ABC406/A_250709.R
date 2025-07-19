# ABC406 A - Not Acceptable
# See problem: https://atcoder.jp/contests/abc406/tasks/abc406_a


input <- scan("stdin", what = integer(), quiet = TRUE)

A <- input[1]
B <- input[2]
C <- input[3]
D <- input[4]

if ((C * 60 + D) < (A * 60 + B)) {
  cat("Yes\n")
} else {
  cat("No\n")
}
