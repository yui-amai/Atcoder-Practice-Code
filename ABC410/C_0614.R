# -----RESULT：TLE-----

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con)
close(con)

tok <- as.integer(unlist(strsplit(lines, "\\s+")))

N <- tok[1]
Q <- tok[2]
idx <- 3
A <- seq_len(N)
offset <- 0

for (i in seq_len(Q)) {
  type <- tok[idx]
  idx <- idx + 1
  if (type == 1) {
    p <- tok[idx]
    x <- tok[idx + 1]
    idx <- idx + 2
    pos <- ((offset + p - 1) %% N) + 1
    A[pos] <- x
  } else if (type == 2) {
    p <- tok[idx]
    idx <- idx + 1
    pos <- ((offset + p - 1) %% N) + 1
    cat(A[pos], "\n")
  } else if (type == 3) {
    k <- tok[idx]
    idx <- idx + 1
    offset <- (offset + k) %% N
  }
}
