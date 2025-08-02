# ABC416 A - Vacation Validation
# See problem: https://atcoder.jp/contests/abc416/tasks/abc416_a
# 2025-07-26 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
L <- as.integer(input[2])
S <- as.integer(input[3])
R <- strsplit(input[4], "")[[1]]

for (i in L:S) {
  if (R[i] == "x") {
    cat("No\n")
    quit()
  }
}
cat("Yes\n")
