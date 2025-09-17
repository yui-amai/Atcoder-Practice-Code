# ABC338 B - Frequency
# See problem: https://atcoder.jp/contests/abc338/tasks/abc338_b
# 2025-09-17 AC+ (ADT　20250917　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]
tbl <- table(S)
mx <- max(tbl)
ans <- sort(names(tbl)[tbl == mx])[1]
cat(ans, "\n")
