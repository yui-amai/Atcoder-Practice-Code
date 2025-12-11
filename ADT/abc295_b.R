# ABC295 B - Bombs
# See problem: https://atcoder.jp/contests/abc295/tasks/abc295_b
# 2025-12-11 AC+ (ADT　20251211　EASY)

con <- file("stdin", open = "r")
lines <- readLines(con)
close(con)

rc <- strsplit(lines[1], " ")[[1]]
R <- as.integer(rc[1])
C <- as.integer(rc[2])

grid_lines <- lines[2:(R + 1)]

chars_list <- strsplit(grid_lines, "")
board <- matrix(unlist(chars_list), nrow = R, ncol = C, byrow = TRUE)

res <- board

for (i in 1:R) {
  for (j in 1:C) {
    cell <- board[i, j]
    if (cell %in% as.character(1:9)) {
      power <- as.integer(cell)
      for (x in 1:R) {
        for (y in 1:C) {
          if (abs(x - i) + abs(y - j) <= power) {
            res[x, y] <- "."
          }
        }
      }
    }
  }
}

for (i in 1:R) {
  cat(paste(res[i, ], collapse = ""), "\n", sep = "")
}
