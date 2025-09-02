# ABC394 C - Debug
# See problem: https://atcoder.jp/contests/abc394/tasks/abc394_c
# 2025-09-02 AC+ (ADT　20250902　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

S <- strsplit(input, "")[[1]]
N <- length(S)

i <- 1L
repeat {
  while (i < N && !(S[i] == "W" && S[i + 1] == "A")) i <- i + 1L
  if (i >= N) break

  S[i] <- "A"
  S[i + 1] <- "C"

  if (i > 1L && S[i - 1] == "W") {
    i <- i - 1L
  } else {
    i <- i + 1L
  }
}

cat(paste0(S, collapse = ""), "\n")
