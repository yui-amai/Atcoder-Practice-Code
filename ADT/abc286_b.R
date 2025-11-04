# ABC286 B - Cat
# See problem: https://atcoder.jp/contests/abc286/tasks/abc286_b
# 2025-11-04 AC+ (ADT　20251104　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[2]

ans <- gsub("na", "nya", S)
cat(ans, "\n")
