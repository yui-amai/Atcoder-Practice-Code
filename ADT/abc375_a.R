# ABC375 A - Seats
# See problem: https://atcoder.jp/contests/abc375/tasks/abc375_a
# 2025-12-03 AC+ (ADT　20251203　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

if (N < 3) {
  cat(0, "\n")
} else {
  ans <- 0
  for (i in 1:(N - 2)) {
    if (S[i] == "#" && S[i + 1] == "." && S[i + 2] == "#") {
      ans <- ans + 1
    }
  }
  cat(ans, "\n")
}
