# ABC415 C - Mixture
# See problem: https://atcoder.jp/contests/abc415/tasks/abc415_c
# 2025-07-19 TLE

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
T <- as.integer(readLines(con, 1))

for (tc in seq_len(T)) {
  N <- as.integer(readLines(con, 1))
  S <- readLines(con, 1)

  maxMask <- bitwShiftL(1L, N) - 1L
  reachable <- logical(maxMask + 1L)
  reachable[1] <- TRUE

  queue <- integer(maxMask + 1L)
  head <- 1L
  tail <- 1L
  queue[tail] <- 0L

  while (head <= tail) {
    mask <- queue[head]
    head <- head + 1L
    for (k in 0L:(N - 1L)) {
      if (bitwAnd(mask, bitwShiftL(1L, k)) == 0L) {
        nxt <- bitwOr(mask, bitwShiftL(1L, k))
        if (!reachable[nxt + 1L] && substr(S, nxt, nxt) == "0") {
          reachable[nxt + 1L] <- TRUE
          tail <- tail + 1L
          queue[tail] <- nxt
        }
      }
    }
  }
  cat(if (reachable[maxMask + 1L]) "Yes\n" else "No\n")
}

close(con)
