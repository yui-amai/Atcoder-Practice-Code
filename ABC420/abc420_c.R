# ABC420 C - Sum of Min Query
# See problem: https://atcoder.jp/contests/abc420/tasks/abc420_c
# 2025-08-24 TLE

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
line1 <- as.integer(strsplit(lines[1], "\\s+")[[1]])
N <- line1[1]
Q <- line1[2]
A <- as.double(strsplit(lines[2], "\\s+")[[1]])
B <- as.double(strsplit(lines[3], "\\s+")[[1]])

ans <- sum(pmin(A, B))
tokens <- unlist(strsplit(paste(lines[-(1:3)], collapse = " "), "\\s+"))
output <- character(Q)
t <- 1L
for (i in 1:Q) {
  c <- tokens[t]
  t <- t + 1L
  X <- as.integer(tokens[t])
  t <- t + 1L
  V <- as.double(tokens[t])
  t <- t + 1L
  ans <- ans - min(A[X], B[X])
  if (c == "A") A[X] <- V else B[X] <- V
  ans <- ans + min(A[X], B[X])
  output[i] <- sprintf("%.0f", ans)
}

cat(paste(output, collapse = "\n"), "\n")
