# ABC223 B - String Shifting
# See problem: https://atcoder.jp/contests/abc223/tasks/abc223_b
# 2025-11-19 WA->AC+ (ADT　20251119　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

S <- strsplit(input, "")[[1]]
n <- length(S)

min_str <- input
max_str <- input

if (n > 1) {
  for (i in 1:(n - 1)) {
    rotated <- paste0(c(S[(i + 1):n], S[1:i]), collapse = "")
    if (rotated < min_str) min_str <- rotated
    if (rotated > max_str) max_str <- rotated
  }
}

cat(min_str, "\n", sep = "")
cat(max_str, "\n", sep = "")
