# ABC272 C - Max Even
# See problem: https://atcoder.jp/contests/abc272/tasks/abc272_c
# 2025-08-26 AC+ (ADT　20250826　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

if (N == 2L) {
  if ((A[1] %% 2L) == (A[2] %% 2L)) {
    cat(A[1] + A[2], "\n")
  } else {
    cat("-1\n")
  }
} else {
  ev <- A[A %% 2L == 0L]
  od <- A[A %% 2L == 1L]

  ans <- 1L
  if (length(ev) >= 2L) ans <- max(ans, sum(sort(ev, decreasing = TRUE)[1:2]))
  if (length(od) >= 2L) ans <- max(ans, sum(sort(od, decreasing = TRUE)[1:2]))

  cat(ans, "\n")
}
