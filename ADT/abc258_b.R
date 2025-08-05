# ABC258 B - Number Box
# See problem: https://atcoder.jp/contests/abc258/tasks/abc258_b
# 2025-08-05 AC+ (ADT　20250805　EASY)

options(scipen = 100, digits = 15)
lines <- readLines("stdin")
N <- as.integer(lines[1])
grid <- matrix(unlist(strsplit(lines[-1], "")), nrow = N, byrow = TRUE)

dirs <- expand.grid(dr = -1:1, dc = -1:1)
dirs <- dirs[!(dirs$dr == 0 & dirs$dc == 0), ]

ans <- ""
for (i in seq_len(N)) {
  for (j in seq_len(N)) {
    for (k in seq_len(nrow(dirs))) {
      dr <- dirs$dr[k]
      dc <- dirs$dc[k]
      steps <- 0:(N - 1)
      rows <- ((i - 1 + dr * steps) %% N) + 1
      cols <- ((j - 1 + dc * steps) %% N) + 1
      s <- paste0(grid[cbind(rows, cols)], collapse = "")
      if (s > ans) ans <- s
    }
  }
}

cat(ans, "\n")
