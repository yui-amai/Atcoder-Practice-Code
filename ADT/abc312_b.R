# ABC312 B - TaK Code
# See problem: https://atcoder.jp/contests/abc312/tasks/abc312_b
# 2025-07-24 AC- (ADT　20250724　EASY)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
first_line <- strsplit(lines[1], " ")[[1]]
N <- as.integer(first_line[1])
M <- as.integer(first_line[2])
S <- do.call(rbind, strsplit(lines[-1], ""))

for (i in 1:(N - 8)) {
  for (j in 1:(M - 8)) {
    b <- S[i + 0:8, j + 0:8]
    if (
      all(b[1:3, 1:3] == "#") &&
        all(b[7:9, 7:9] == "#") &&
        all(c(b[1:3, 4], b[4, 1:3], b[4, 4]) == ".") &&
        all(c(b[7:9, 6], b[6, 7:9], b[6, 6]) == ".")
    ) {
      cat(i, j, "\n")
    }
  }
}
