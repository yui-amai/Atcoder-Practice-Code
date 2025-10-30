# ABC391 B - Seek Grid
# See problem: https://atcoder.jp/contests/abc391/tasks/abc391_b
# 2025-10-30 AC+ (ADT　20251030　EASY)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

ptr <- 1
nm <- as.integer(strsplit(lines[ptr], "\\s+")[[1]])
ptr <- ptr + 1
N <- nm[1]
M <- nm[2]

S <- matrix(NA_character_, nrow = N, ncol = N)
for (i in 1:N) {
  S[i, ] <- strsplit(lines[ptr], "")[[1]]
  ptr <- ptr + 1L
}

T <- matrix(NA_character_, nrow = M, ncol = M)
for (i in 1:M) {
  T[i, ] <- strsplit(lines[ptr], "")[[1]]
  ptr <- ptr + 1L
}

limit <- N - M + 1L
for (a in 1:limit) {
  for (b in 1:limit) {
    subS <- S[a:(a + M - 1), b:(b + M - 1), drop = FALSE]
    if (identical(subS, T)) {
      cat(a, b, sep = " ")
      quit(save = "no")
    }
  }
}
