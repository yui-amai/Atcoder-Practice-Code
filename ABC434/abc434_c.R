# ABC434 C - Flapping Takahashi
# See problem: https://atcoder.jp/contests/abc434/tasks/abc434_c
# 2025-11-29 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = numeric(), quiet = TRUE)
T <- input[1]
ptr <- 2
ans <- character(T)

for (case in 1:T) {
  N <- input[ptr]
  H <- input[ptr + 1]
  ptr <- ptr + 2

  last_t <- 0
  L <- H
  R <- H
  ok <- TRUE

  for (i in 1:N) {
    t <- input[ptr]
    l <- input[ptr + 1]
    u <- input[ptr + 2]
    ptr <- ptr + 3

    dt <- t - last_t
    last_t <- t

    if (!ok) next

    L <- L - dt
    R <- R + dt

    if (L < l) L <- l
    if (R > u) R <- u

    if (L > R) {
      ok <- FALSE
    }
  }

  ans[case] <- if (ok) "Yes" else "No"
}

cat(paste(ans, collapse = "\n"), "\n")
