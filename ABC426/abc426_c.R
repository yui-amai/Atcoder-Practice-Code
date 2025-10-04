# ABC426 C - Upgrade Required
# See problem: https://atcoder.jp/contests/abc426/tasks/abc426_c
# 2025-10-04 TLE->AC-

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
Q <- input[2]

a <- rep.int(1, N + 1)
a[1] <- 0
parent <- 0:N + 1

out <- integer(Q)
idx <- 3

for (q in 1:Q) {
  x <- input[idx]
  idx <- idx + 1
  y <- input[idx]
  idx <- idx + 1

  s <- 0
  repeat {
    xi <- x + 1
    while (xi != parent[xi]) {
      parent[xi] <- parent[parent[xi]]
      xi <- parent[xi]
    }
    p <- xi - 1

    if (p == 0) break
    pi <- p + 1
    s <- s + a[pi]
    a[pi] <- 0
    yi <- p
    while (yi != parent[yi]) {
      parent[yi] <- parent[parent[yi]]
      yi <- parent[yi]
    }
    parent[pi] <- yi
  }
  a[y + 1] <- a[y + 1] + s
  out[q] <- s
}

cat(paste(out, collapse = "\n"), "\n")
