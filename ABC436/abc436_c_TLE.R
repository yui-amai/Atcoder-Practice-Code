options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]

occupied <- new.env(hash = TRUE, parent = emptyenv())
ans <- 0L

idx <- 3L
for (i in seq_len(M)) {
  R <- input[idx]
  C <- input[idx + 1L]
  idx <- idx + 2L

  r1 <- as.character(R)
  r2 <- as.character(R + 1L)
  e1 <- occupied[[r1]]
  if (is.null(e1)) {
    e1 <- new.env(hash = TRUE, parent = emptyenv())
    occupied[[r1]] <- e1
  }
  e2 <- occupied[[r2]]
  if (is.null(e2)) {
    e2 <- new.env(hash = TRUE, parent = emptyenv())
    occupied[[r2]] <- e2
  }

  c1 <- as.character(C)
  c2 <- as.character(C + 1L)

  if (!is.null(e1[[c1]]) || !is.null(e2[[c1]]) || !is.null(e1[[c2]]) || !is.null(e2[[c2]])) next

  e1[[c1]] <- TRUE
  e2[[c1]] <- TRUE
  e1[[c2]] <- TRUE
  e2[[c2]] <- TRUE
  ans <- ans + 1L
}

cat(ans, "\n")
