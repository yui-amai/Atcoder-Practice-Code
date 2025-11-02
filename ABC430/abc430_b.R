# ABC430 B - Count Subgrid
# See problem: https://atcoder.jp/contests/abc430/tasks/abc430_b
# 2025-11-01 AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
nm <- scan(text = lines[1], what = integer(), quiet = TRUE)
N <- nm[1]
M <- nm[2]
S <- lines[2:(N + 1)]

grid <- do.call(rbind, lapply(S, function(row) strsplit(row, "")[[1]]))
ans <- character(0)
for (i in 1:(N - M + 1)) {
  for (j in 1:(N - M + 1)) {
    sub <- grid[i:(i + M - 1), j:(j + M - 1), drop = FALSE]
    pat <- paste(apply(sub, 1, paste0, collapse = ""), collapse = "/")
    ans <- c(ans, pat)
  }
}

cat(length(unique(ans)), "\n")
