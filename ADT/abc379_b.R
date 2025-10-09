# ABC379 B - Strawberries
# See problem: https://atcoder.jp/contests/abc379/tasks/abc379_b
# 2025-10-09 AC+ (ADT　20251009　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
K <- as.integer(input[2])
S <- input[3]

teeth <- strsplit(S, "")[[1]]
len <- rle(teeth)

ans <- sum((len$lengths[len$values == "O"]) %/% K)
cat(ans, "\n")
