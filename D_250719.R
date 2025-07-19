input <- scan("stdin", what = numeric(), quiet = TRUE)
N <- input[1]
M <- input[2]

options <- list()
idx <- 3
for (i in 1:M) {
  A <- input[idx]
  B <- input[idx + 1]
  idx <- idx + 2
  if (A <= N) {
    options[[length(options) + 1]] <- c(A, A - B)
  }
}

if (length(options) == 0) {
  cat(0, "\n")
  quit(status = 0)
}

options_mat <- do.call(rbind, options)
ord <- order(options_mat[, 1])
A_list <- options_mat[ord, 1]
c_list <- options_mat[ord, 2]

pref_c <- c_list
pref_A <- A_list
for (i in 2:length(c_list)) {
  if (c_list[i] < pref_c[i - 1]) {
    pref_c[i] <- c_list[i]
    pref_A[i] <- A_list[i]
  } else {
    pref_c[i] <- pref_c[i - 1]
    pref_A[i] <- pref_A[i - 1]
  }
}

e <- N
stickers <- 0
repeat {
  idxs <- which(A_list <= e)
  if (length(idxs) == 0) break
  idx <- max(idxs)

  cost <- pref_c[idx]
  threshold <- pref_A[idx]

  t <- (e - threshold) %/% cost + 1
  stickers <- stickers + t
  e <- e - t * cost
}

cat(stickers, "\n")
