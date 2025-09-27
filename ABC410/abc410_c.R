# ABC410 C - Rotatable Array
# See problem: https://atcoder.jp/contests/abc410/tasks/abc410_c
# 2025-09-27 AC-

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con)
close(con)

tok <- as.integer(unlist(strsplit(lines, "\\s+")))

idx <- 1
N <- tok[idx]
idx <- idx + 1
Q <- tok[idx]
idx <- idx + 1
A <- seq_len(N)
offset <- 0
out <- integer(Q)
m <- 0

for (i in 1:Q) {
  type <- tok[idx]
  idx <- idx + 1
  if (type == 1) {
    p <- tok[idx]
    x <- tok[idx + 1]
    idx <- idx + 2
    pos <- offset + p
    if (pos > N) pos <- pos - N
    A[pos] <- x
  } else if (type == 2) {
    p <- tok[idx]
    idx <- idx + 1
    pos <- offset + p
    if (pos > N) pos <- pos - N
    m <- m + 1
    out[m] <- A[pos]
  } else {
    k <- tok[idx]
    idx <- idx + 1
    k <- k %% N
    offset <- offset + k
    if (offset >= N) offset <- offset - N
  }
}

if (m > 0L) cat(paste(out[1:m], collapse = "\n"), "\n")
