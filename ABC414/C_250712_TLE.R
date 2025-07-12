# ABC414 C - Palindromic in Both Bases
# See problem: https://atcoder.jp/contests/abc414/tasks/abc414_c

input <- scan("stdin", what = numeric(), quiet = TRUE)
A <- input[1]
N <- input[2]
maxL <- nchar(as.character(N))
total <- 0

for (L in 1:maxL) {
  h <- ceiling(L / 2)
  h_min <- ifelse(h == 1, 1, 10^(h - 1))
  h_max <- 10^h - 1
  for (x in h_min:h_max) {
    x_str <- as.character(x)
    if (L %% 2 == 0) {
      tail_chars <- rev(strsplit(x_str, "")[[1]])
      p_str <- paste0(x_str, paste0(tail_chars, collapse = ""))
    } else {
      head_chars <- strsplit(x_str, "")[[1]]
      tail_chars <- rev(head_chars[-length(head_chars)])
      p_str <- paste0(x_str, paste0(tail_chars, collapse = ""))
    }
    p <- as.numeric(p_str)
    if (is.na(p) || p > N) break
    digs <- integer()
    t <- p
    while (t > 0) {
      digs <- c(digs, t %% A)
      t <- t %/% A
    }
    if (length(digs) == 0 || identical(digs, rev(digs))) {
      total <- total + p
    }
  }
}

options(scipen = 100)
cat(format(total, scientific = FALSE), "\n")

# Absolutely TLE for A = 2, N = 999999999999 (the worst case)
