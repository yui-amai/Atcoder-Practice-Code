# ABC420 B - Most Minority
# See problem: https://atcoder.jp/contests/abc420/tasks/abc420_b
# 2025-08-24 AC+

lines <- readLines("stdin", warn = FALSE)
nm <- scan(text = lines[1], what = integer(), quiet = TRUE)
N <- nm[1]
M <- nm[2]
S <- lines[2:(N + 1)]

mat <- do.call(rbind, strsplit(S, "", fixed = TRUE))
score <- integer(N)
for (j in 1:M) {
  col <- mat[, j]
  ones <- sum(col == "1")
  zeros <- N - ones
  if (ones == 0 || zeros == 0) {
    score <- score + 1L
  } else if (zeros < ones) {
    score <- score + as.integer(col == "0")
  } else {
    score <- score + as.integer(col == "1")
  }
}

winners <- which(score == max(score))
cat(paste(winners, collapse = " "), "\n")
