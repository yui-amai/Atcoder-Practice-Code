# ABC425 C - Rotate and Sum Query
# See problem: https://atcoder.jp/contests/abc425/tasks/abc425_c
# 2025-09-27 AC-

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con)
close(con)

tok <- as.integer(unlist(strsplit(lines, "\\s+")))

N <- tok[1]
Q <- tok[2]
idx <- 3
A <- as.numeric(tok[idx:(idx + N - 1)])
idx <- idx + N

ps <- c(0, cumsum(A))

off <- 0L
out <- numeric(Q)
m <- 0L

for (qq in 1:Q) {
  t <- tok[idx]
  idx <- idx + 1
  if (t == 1) {
    c <- tok[idx]
    idx <- idx + 1
    off <- (off + (c %% N)) %% N
  } else {
    l <- tok[idx]
    r <- tok[idx + 1]
    idx <- idx + 2
    a <- ((l + off - 1) %% N) + 1
    b <- ((r + off - 1) %% N) + 1
    if (a <= b) {
      s <- ps[b + 1] - ps[a]
    } else {
      s <- (ps[N + 1] - ps[a]) + ps[b + 1]
    }
    m <- m + 1
    out[m] <- s
  }
}

if (m > 0L) {
  cat(paste(format(out[1:m], scientific = FALSE, trim = TRUE), collapse = "\n"), "\n")
}

# Similar to ABC410/abc410_c.R
