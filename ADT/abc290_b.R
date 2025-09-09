# ABC290 B - Qual B
# See problem: https://atcoder.jp/contests/abc290/tasks/abc290_b
# 2025-09-09 AC+ (ADT　20250909　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
K <- as.integer(input[2])
S <- strsplit(trimws(input[3]), "")[[1]]

cnt <- 0L
T <- character(N)
for (i in seq_len(N)) {
  if (S[i] == "o" && cnt < K) {
    T[i] <- "o"
    cnt <- cnt + 1L
  } else {
    T[i] <- "x"
  }
}

cat(paste(T, collapse = ""), "\n")
