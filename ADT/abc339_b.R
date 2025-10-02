# ABC339 B - Langton's Takahashi
# See problem: https://atcoder.jp/contests/abc339/tasks/abc339_b
# 2025-10-02 AC+ (ADT　20251002　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
H <- input[1]
W <- input[2]
N <- input[3]

grid <- matrix(FALSE, nrow = H, ncol = W)

dir <- 0
i <- 1
j <- 1

for (step in 1:N) {
  if (!grid[i, j]) {
    grid[i, j] <- TRUE
    dir <- (dir + 1) %% 4
  } else {
    grid[i, j] <- FALSE
    dir <- (dir + 3) %% 4
  }

  if (dir == 0L) {
    i <- i - 1
    if (i < 1) i <- H
  } else if (dir == 1) {
    j <- j + 1
    if (j > W) j <- 1
  } else if (dir == 2) {
    i <- i + 1
    if (i > H) i <- 1
  } else {
    j <- j - 1
    if (j < 1) j <- W
  }
}

for (r in 1:H) {
  line <- ifelse(grid[r, ], "#", ".")
  cat(paste(line, collapse = ""), "\n", sep = "")
}
