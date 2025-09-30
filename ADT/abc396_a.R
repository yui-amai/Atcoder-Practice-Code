# ABC396 A - Triple Four
# See problem: https://atcoder.jp/contests/abc396/tasks/abc396_a
# 2025-09-30 AC+ (ADT　20250930　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

ans <- "No"
if (N >= 3) {
  for (i in 1:(N - 2)) {
    if (A[i] == A[i + 1] && A[i] == A[i + 2]) {
      ans <- "Yes"
      break
    }
  }
}
cat(ans, "\n")
