# ABC416 B - 1D Akari
# See problem: https://atcoder.jp/contests/abc416/tasks/abc416_b
# 2025-07-26 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
S <- strsplit(input, "")[[1]]

n <- length(S)
T <- rep(".", n)

i <- 1
while (i <= n) {
  if (S[i] == "#") {
    T[i] <- "#"
    i <- i + 1
  } else {
    j <- i
    while (j <= n && S[j] == ".") {
      j <- j + 1
    }
    T[i] <- "o"
    if (j > i + 1) {
      T[(i + 1):(j - 1)] <- "."
    }
    i <- j
  }
}
cat(paste(T, collapse = ""), "\n")
