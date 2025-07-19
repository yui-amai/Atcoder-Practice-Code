library(bit64)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

Q <- as.integer(lines[1])
val <- integer64(Q)
cnt <- integer64(Q)
head <- 1L
tail <- 0L

idx <- 2L
for (i in seq_len(Q)) {
  parts <- strsplit(lines[idx], " ", fixed = TRUE)[[1]]
  idx <- idx + 1L

  if (parts[1] == "1") {
    c <- as.integer64(parts[2])
    x <- as.integer64(parts[3])
    tail <- tail + 1L
    val[tail] <- x
    cnt[tail] <- c
  } else {
    k <- as.integer64(parts[2])
    s <- as.integer64(0)
    while (k > 0L) {
      t <- min(cnt[head], k)
      s <- s + val[head] * t
      cnt[head] <- cnt[head] - t
      k <- k - t
      if (cnt[head] == 0L) head <- head + 1L
    }
    cat(as.character(s), "\n")
  }
}

# TLE
