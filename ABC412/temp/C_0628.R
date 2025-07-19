options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
idx <- 1
T <- as.integer(lines[idx])
idx <- idx + 1

ans <- integer(T)

for (i in seq_len(T)) {
  N <- as.integer(lines[idx])
  idx <- idx + 1
  S <- as.integer(strsplit(lines[idx], "\\s+")[[1]])
  idx <- idx + 1

  Domino <- S
  D_idx <- seq_len(N)
  order_i <- order(Domino)
  Domino <- Domino[order_i]
  D_idx <- D_idx[order_i]

  visited <- rep(FALSE, N)
  dist <- rep(Inf, N)

  q <- integer(N)
  q_head <- 1
  q_tail <- 1
  q[q_tail] <- 1
  visited[1] <- TRUE
  dist[1] <- 1

  ptr <- 1
  while (ptr <= N && D_idx[ptr] == 1) {
    ptr <- ptr + 1
  }
  while (q_head <= q_tail) {
    u <- q[q_head]
    q_head <- q_head + 1
    if (u == N) break

    T_lim <- 2L * S[u]

    while (ptr <= N && Domino[ptr] <= T_lim) {
      v <- D_idx[ptr]
      ptr <- ptr + 1
      if (!visited[v]) {
        visited[v] <- TRUE
        dist[v] <- dist[u] + 1L
        q_tail <- q_tail + 1
        q[q_tail] <- v
      }
    }
  }
  ans[i] <- if (is.finite(dist[N])) dist[N] else -1L
}

cat(ans, sep = "\n")
