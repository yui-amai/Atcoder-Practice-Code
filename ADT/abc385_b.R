# ABC385 B - Santa Claus 1
# See problem: https://atcoder.jp/contests/abc385/tasks/abc385_b
# 2025-08-07 AC+ (ADT　20250807　EASY)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

fl <- strsplit(lines[1], " +")[[1]]
H <- as.integer(fl[1])
W <- as.integer(fl[2])
X <- as.integer(fl[3])
Y <- as.integer(fl[4])
grid <- lines[2:(1 + H)]
T <- strsplit(lines[2 + H], "")[[1]]

i <- X
j <- Y
visited <- matrix(FALSE, H, W)
count <- 0
if (substr(grid[i], j, j) == "@") {
  visited[i, j] <- TRUE
  count <- 1
}

dx <- c(U = -1, D = +1, L = 0, R = 0)
dy <- c(U = 0, D = 0, L = -1, R = +1)
for (c in T) {
  ni <- i + dx[c]
  nj <- j + dy[c]
  if (ni >= 1 && ni <= H && nj >= 1 && nj <= W &&
    substr(grid[ni], nj, nj) != "#") {
    i <- ni
    j <- nj
    if (substr(grid[i], j, j) == "@" && !visited[i, j]) {
      visited[i, j] <- TRUE
      count <- count + 1
    }
  }
}

cat(i, j, count, "\n")
