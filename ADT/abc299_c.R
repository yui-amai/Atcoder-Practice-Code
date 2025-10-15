# ABC299 C - Dango
# See problem: https://atcoder.jp/contests/abc299/tasks/abc299_c
# 2025-10-15 WA->AC- (ADT　20251015　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)

N <- as.integer(input[1])
S <- strsplit(input[2], "")[[1]]

ans <- 0

for (flip in 1:2) {
  level <- 0
  for (i in seq_len(N)) {
    if (S[i] == "-") {
      ans <- max(ans, level)
      level <- 0
    } else {
      level <- level + 1
    }
  }
  S <- rev(S)
}

if (ans > 0) {
  cat(ans, "\n")
} else {
  cat("-1\n")
}
