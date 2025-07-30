# ABC230 B - Triple Metre
# See problem: https://atcoder.jp/contests/abc230/tasks/abc230_b
# 2025-07-29 AC+ (ADT　20250729　EASY)

S <- scan("stdin", what = character(), quiet = TRUE)

T <- paste0(rep("oxx", 4), collapse = "")
if (grepl(S, T, fixed = TRUE)) {
  cat("Yes\n")
} else {
  cat("No\n")
}

## Python: print("Yes" if S in T else "No")
