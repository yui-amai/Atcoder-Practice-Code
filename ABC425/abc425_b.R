# ABC425 B - Find Permutation 2
# See problem: https://atcoder.jp/contests/abc425/tasks/abc425_b
# 2025-09-27 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

not_neg <- A[A != -1]

if (length(not_neg) != length(unique(not_neg)) || any(not_neg < 1 | not_neg > N)) {
  cat("No\n")
  quit(save = "no")
}

unused <- setdiff(1:N, not_neg)
P <- A
P[P == -1] <- unused

if (length(unique(P)) != N) {
  cat("No\n")
} else {
  cat("Yes\n")
  cat(paste(P, collapse = " "), "\n")
}
