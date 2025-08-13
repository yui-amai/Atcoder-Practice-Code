# ABC385 C - Illuminate Buildings
# See problem: https://atcoder.jp/contests/abc385/tasks/abc385_c
# 2025-08-13 WA->AC+ (ADT　20250813　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
H <- input[-1]

groups <- split(seq_len(N), H)
ans <- 1L
for (idx in groups) {
  m <- length(idx)
  if (m <= ans) next

  present <- rep(FALSE, N)
  present[idx] <- TRUE
  r <- range(idx)
  width <- r[2] - r[1]
  if (width + 1L <= ans) next

  for (d in 1:width) {
    if (width %/% d + 1L <= ans) break

    left_ok <- (idx - d) >= 1L
    prev_present <- logical(length(idx))
    prev_present[left_ok] <- present[idx[left_ok] - d]

    starts <- c(idx[!left_ok], idx[left_ok & !prev_present])

    for (s in starts) {
      len <- 1L
      t <- s + d
      while (t <= N && present[t]) {
        len <- len + 1L
        t <- t + d
      }
      if (len > ans) ans <- len
    }
  }
}

cat(ans, "\n")
