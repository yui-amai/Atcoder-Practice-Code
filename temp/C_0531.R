options(scipen = 100, digits = 15)
con <- file("stdin", "r")
input <- readLines(con)
close(con)
first_line <- as.integer(strsplit(input[1], " ")[[1]])

N <- first_line[1]
M <- first_line[2]

L <- integer(M)
R <- integer(M)

for (i in 1:M) {
  line <- as.integer(strsplit(input[i + 1], " ")[[1]])
  L[i] <- line[1]
  R[i] <- line[2]
}

covered <- function() {
  diff <- rep(0, N + 2)
  for (i in 1:M) {
    diff[L[i]] <- diff[L[i]] + 1
    diff[R[i] + 1] <- diff[R[i] + 1] - 1
  }
  cover <- rep(0, N + 1)
  current <- 0
  for (i in 1:N) {
    current <- current + diff[i]
    cover[i] <- current
  }
  if (any(cover[1:N] == 0)) {
    cat(0, "\n")
  } else {
    cover_count <- table(cover[1:N])
    possible_k <- as.integer(names(cover_count))
    min_destroy <- min(possible_k)
    cat(min_destroy, "\n")
  }
}
covered()
