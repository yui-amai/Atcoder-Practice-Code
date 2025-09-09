# ABC394 B - cat
# See problem: https://atcoder.jp/contests/abc394/tasks/abc394_b
# 2025-09-09 AC+ (ADT　20250909　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[-1]

ord <- order(nchar(S))
ans <- paste(S[ord], collapse = "")
cat(ans, "\n")
