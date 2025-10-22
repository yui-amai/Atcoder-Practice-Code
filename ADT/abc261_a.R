# ABC216 A - Signed Difficulty
# See problem: https://atcoder.jp/contests/abc216/tasks/abc216_a
# 2025-10-22 AC+ (ADT　20251022　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

parts <- strsplit(input, "\\.")[[1]]
x <- parts[1]
y <- as.integer(parts[2])

suffix <- if (y <= 2) {
  "-"
} else if (y <= 6) {
  ""
} else {
  "+"
}

cat(paste0(x, suffix))
