# ABC419 A - AtCoder Language
# See problem: https://atcoder.jp/contests/abc419/tasks/abc419_a
# 2025-08-16 RE->AC+

s <- scan("stdin", what = character(), quiet = TRUE)

ans <- if (s == "red") {
  "SSS"
} else if (s == "blue") {
  "FFF"
} else if (s == "green") {
  "MMM"
} else {
  "Unknown"
}

cat(ans, "\n")
