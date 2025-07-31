# ABC249 B - Perfect String
# See problem: https://atcoder.jp/contests/abc249/tasks/abc249_b
# 2025-07-31 AC+ (ADT　20250731　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]
uni_S <- unique(S)

if (length(uni_S) == length(S) && grepl("[A-Z]", input) && grepl("[a-z]", input)) {
  cat("Yes\n")
} else {
  cat("No\n")
}
