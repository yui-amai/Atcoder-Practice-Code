# ABC422 B - Looped Rope
# See problem: https://atcoder.jp/contests/abc422/tasks/abc422_b
# 2025-09-07 AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
fl <- strsplit(lines[1], "\\s+")[[1]]
H <- as.integer(fl[1])
W <- as.integer(fl[2])

S <- lines[2:(H + 1)]

grid <- do.call(rbind, strsplit(S, ""))
ok <- TRUE
dirs <- rbind(c(-1, 0), c(1, 0), c(0, -1), c(0, 1))

for (i in 1:H) {
  for (j in 1:W) {
    if (grid[i, j] == "#") {
      cnt <- 0L
      for (k in 1:nrow(dirs)) {
        ni <- i + dirs[k, 1]
        nj <- j + dirs[k, 2]
        if (ni >= 1 && ni <= H && nj >= 1 && nj <= W) {
          if (grid[ni, nj] == "#") cnt <- cnt + 1
        }
      }
      if (!(cnt == 2 || cnt == 4)) {
        ok <- FALSE
        break
      }
    }
  }
  if (!ok) break
}

cat(if (ok) "Yes\n" else "No\n")
