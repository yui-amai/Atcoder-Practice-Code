# ABC430 C - Truck Driver
# See problem: https://atcoder.jp/contests/abc430/tasks/abc430_c
# 2025-11-01 AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)
nab <- scan(text = lines[1], what = integer(), quiet = TRUE)
N <- nab[1]
A <- nab[2]
B <- nab[3]
S <- strsplit(lines[2], "")[[1]]

pre_A <- c(0, cumsum(S == "a"))
pre_B <- c(0, cumsum(S == "b"))

if (pre_A[N + 1] < A) {
  cat("0\n")
  quit(save = "no")
}

ans <- 0.0
r1 <- 0
r2 <- 0

for (l in 1:N) {
  if (pre_A[N + 1] - pre_A[l] < A) break
  if (r1 < l - 1) r1 <- l - 1
  if (r2 < l - 1) r2 <- l - 1
  while (r1 < N && (pre_A[r1 + 1] - pre_A[l] < A)) r1 <- r1 + 1
  while (r2 < N && (pre_B[r2 + 1 + 1] - pre_B[l] < B)) r2 <- r2 + 1

  if (r2 >= r1) ans <- ans + (r2 - r1 + 1)
}

cat(format(ans, scientific = FALSE), "\n")
