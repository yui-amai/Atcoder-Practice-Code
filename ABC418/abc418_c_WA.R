# ABC418 C- Flush
# See problem: https://atcoder.jp/contests/abc418/tasks/abc418_c
# 2025-08-09 WA

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

tok <- as.integer(unlist(strsplit(paste(lines, collapse = " "), "\\s+")))
tok <- tok[!is.na(tok)]

idx <- 1L
N <- tok[idx]
idx <- idx + 1L
Q <- tok[idx]
idx <- idx + 1L
A <- tok[idx:(idx + N - 1L)]
idx <- idx + N
B <- tok[idx:(idx + Q - 1L)]

maxA <- max(A)
maxB <- max(B)

M <- max(maxA, maxB - 1L, 0L)
freq <- tabulate(A + 1L, nbins = M + 1L)
vals <- 0:M

prefCnt <- cumsum(freq)
prefSum <- cumsum(freq * vals)

k <- B - 1L
id <- k + 1L
Sk <- prefSum[id] + (N - prefCnt[id]) * k

ans <- Sk + 1
ans[B > maxA] <- -1

cat(paste(ans, collapse = "\n"), "\n", sep = "")
