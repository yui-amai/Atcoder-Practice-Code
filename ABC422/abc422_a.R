# ABC422 A - Stage Clear
# See problem: https://atcoder.jp/contests/abc422/tasks/abc422_a
# 2025-09-07 AC+

input <- scan("stdin", what = character(), quiet = TRUE)

S <- strsplit(trimws(input), "-", fixed = TRUE)[[1]]
i <- as.integer(S[1])
j <- as.integer(S[2])

if (j < 8) {
  j <- j + 1
} else {
  i <- i + 1
  j <- 1
}

cat(sprintf("%d-%d\n", i, j))
