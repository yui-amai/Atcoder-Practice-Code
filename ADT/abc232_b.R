# ABC232 B - Caesar Cipher
# See problem: https://atcoder.jp/contests/abc232/tasks/abc232_b
# 2025-08-06 AC+ (ADT　20250806　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- unlist(strsplit(input[1], ""))
T <- unlist(strsplit(input[2], ""))

k <- (utf8ToInt(T[1]) - utf8ToInt(S[1])) %% 26

ok <- TRUE
for (i in seq_along(S)) {
  diff <- (utf8ToInt(T[i]) - utf8ToInt(S[i])) %% 26
  if (diff != k) {
    ok <- FALSE
    break
  }
}

if (ok) {
  cat("Yes\n")
} else {
  cat("No\n")
}
