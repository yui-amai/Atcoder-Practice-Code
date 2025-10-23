# ABC319 B - Measure
# See problem: https://atcoder.jp/contests/abc319/tasks/abc319_b
# 2025-10-23 AC+ (ADT　20251023　EASY)

N <- scan("stdin", what = integer(), quiet = TRUE)

j_set <- (1:9)[N %% (1:9) == 0]
periods <- N %/% j_set

res <- character(N + 1)
for (i in 0:N) {
  idx <- which(i %% periods == 0)
  if (length(idx) > 0) {
    res[i + 1] <- as.character(j_set[min(idx)])
  } else {
    res[i + 1] <- "-"
  }
}

cat(paste(res, collapse = ""), "\n")
