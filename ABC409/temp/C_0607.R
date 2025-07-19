options(scipen = 100, digits = 15)
con <- file("stdin", "r")
first_line <- strsplit(readLines(con, n = 1), " ")[[1]]
N <- as.integer(first_line[1])
L <- as.integer(first_line[2])
d_list <- strsplit(readLines(con, n = 1), " ")[[1]]
close(con)

pos <- numeric(N)
pos[1] <- 0
pos[2:N] <- cumsum(d_list) %% L
freq <- tabulate(pos + 1L, nbins = L)

if (L %% 3 != 0) {
  ans <- 0
} else {
  t <- L / 3
  r <- 0:(t - 1)
  ans <- sum(freq[r + 1] * freq[r + t + 1] * freq[r + 2 * t + 1])
}

cat(ans, "\n")
