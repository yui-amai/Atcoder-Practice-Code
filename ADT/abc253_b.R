# ABC253 B - Distance Between Tokens
# See problem: https://atcoder.jp/contests/abc253/tasks/abc253_b
# 2025-11-12 AC+ (ADT　20251112　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
H <- input[1]
W <- input[2]
S <- input[-(1:2)]

mat <- do.call(rbind, strsplit(S, "", TRUE))
pos <- which(mat == "o", arr.ind = TRUE)
ans <- sum(abs(pos[1, ] - pos[2, ]))
cat(ans, "\n")
