options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
tokens <- as.integer(strsplit(paste(lines, collapse = " "), "\\s+")[[1]])
idx <- 1
N <- tokens[idx]
idx <- idx + 1
M <- tokens[idx]
idx <- idx + 1
A <- tokens[idx + seq(0, by = 2, length.out = M)]
B <- tokens[idx + seq(1, by = 2, length.out = M)]

mapping <- matrix(0L, nrow = N, ncol = N)
bit <- 0L
for (i in seq_len(N - 1)) {
  for (j in seq((i + 1), N)) {
    bit <- bit + 1L
    mapping[i, j] <- bit
    mapping[j, i] <- bit
  }
}
mask0 <- 0L
for (k in seq_len(M)) {
  i <- A[k]
  j <- B[k]
  pos <- mapping[i, j]
  mask0 <- bitwOr(mask0, bitwShiftL(1L, pos - 1L))
}

all_masks <- integer(0)
gen_perm <- function(prefix, rem) {
  if (length(rem) == 0L) {
    p <- prefix
    visited <- rep(FALSE, N)
    ok <- TRUE
    mask <- 0L
    for (i in seq_len(N)) {
      if (!visited[i]) {
        cur <- i
        len <- 0L
        repeat {
          visited[cur] <- TRUE
          nxt <- p[cur]
          ii <- cur
          jj <- nxt
          if (ii > jj) tmp <- ii else tmp <- jj
          if (ii < jj) pos <- mapping[ii, jj] else pos <- mapping[jj, ii]
          mask <- bitwOr(mask, bitwShiftL(1L, pos - 1L))
          len <- len + 1L
          cur <- nxt
          if (cur == i) break
        }
        if (len < 3L) {
          ok <- FALSE
          break
        }
      }
    }
    if (ok) all_masks <<- c(all_masks, mask)
    return()
  }
  for (i in seq_along(rem)) {
    gen_perm(c(prefix, rem[i]), rem[-i])
  }
}

gen_perm(integer(0), seq_len(N))
cycle_masks <- unique(all_masks)

best <- Inf
for (m in cycle_masks) {
  diff <- bitwXor(mask0, m)
  cnt <- sum(as.integer(intToBits(diff)))
  if (cnt < best) best <- cnt
}

cat(best, "\n")
