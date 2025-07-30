# ABC323 B - Round-Robin Tournament
# See problem: https://atcoder.jp/contests/abc323/tasks/abc323_b
# 2025-07-29 AC+ (ADT　20250729　EASY)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

N <- as.integer(lines[1])
S <- strsplit(lines[-1], "")

wins <- sapply(S, function(row) sum(row == "o"))
rank <- order(-wins, seq_len(N))
cat(rank, "\n")
