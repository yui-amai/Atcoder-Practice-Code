# ABC416 C - Concat(X-th)
# See problem: https://atcoder.jp/contests/abc416/tasks/abc416_c
# 2025-07-26 AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

first_line <- as.integer(strsplit(lines[1], " ")[[1]])
N <- first_line[1]
K <- first_line[2]
X <- first_line[3]
S <- lines[2:(N + 1)]
prev <- S

for (i in seq_len(K - 1)) {
  prev <- as.vector(outer(prev, S, paste0))
}
ans <- sort(prev)[X]
cat(ans, "\n")
