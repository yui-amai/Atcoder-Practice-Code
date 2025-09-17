# ABC287 B - Postal Card
# See problem: https://atcoder.jp/contests/abc287/tasks/abc287_b
# 2025-09-17 AC+ (ADT　20250917　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
M <- as.integer(input[2])
S <- input[3:(N + 2)]
T <- input[(N + 3):(M + N + 2)]

S3 <- substr(S, 4, 6)
uni_T <- unique(T)

ans <- sum(S3 %in% uni_T)
cat(ans, "\n")
