options(scipen = 100, digits = 15)
con <- file("stdin", "r")
first_line <- readLines(con, n = 1)
A <- as.integer(strsplit(readLines(con, n = 1), " ")[[1]])
close(con)

nums <- as.integer(strsplit(first_line, " ")[[1]])
N <- nums[1]
Q <- nums[2]


state <- rep(FALSE, N)
seg <- 0
ans <- integer(Q)

for (i in seq_len(Q)) {
  x <- A[i]
  left <- if (x > 1) state[x - 1] else FALSE
  right <- if (x < N) state[x + 1] else FALSE

  if (!state[x]) {
    if (!left && !right) {
      seg <- seg + 1
    } else if (left && right) {
      seg <- seg - 1
    }
    state[x] <- TRUE
  } else {
    if (!left && !right) {
      seg <- seg - 1
    } else if (left && right) {
      seg <- seg + 1
    }
    state[x] <- FALSE
  }

  ans[i] <- seg
}

cat(ans, sep = "\n")
