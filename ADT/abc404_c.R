# ABC404 C - Cycle Graph?
# See problem: https://atcoder.jp/contests/abc404/tasks/abc404_c
# 2025-08-19 AC+ (ADT　20250819　EASY)

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)

N <- input[1]
M <- input[2]
if (M != N) {
  cat("No\n")
  quit(save = "no")
}

ab <- input[-(1:2)]
A <- ab[seq(1, 2 * M, by = 2)]
B <- ab[seq(2, 2 * M, by = 2)]

degree <- integer(N)
n1 <- integer(N)
n2 <- integer(N)
for (i in seq_len(M)) {
  u <- A[i]
  v <- B[i]
  degree[u] <- degree[u] + 1
  degree[v] <- degree[v] + 1
  if (n1[u] == 0L) {
    n1[u] <- v
  } else if (n2[u] == 0L) {
    n2[u] <- v
  } else {
    cat("No\n")
    quit(save = "no")
  }
  if (n1[v] == 0L) {
    n1[v] <- u
  } else if (n2[v] == 0L) {
    n2[v] <- u
  } else {
    cat("No\n")
    quit(save = "no")
  }
}

if (!all(degree == 2L)) {
  cat("No\n")
  quit(save = "no")
}

start <- 1L
prev <- 0L
curr <- start
steps <- 0L
repeat {
  nxt <- if (n1[curr] != prev) n1[curr] else n2[curr]
  prev <- curr
  curr <- nxt
  steps <- steps + 1L
  if (curr == start) break
}

cat(if (steps == N) "Yes\n" else "No\n")
