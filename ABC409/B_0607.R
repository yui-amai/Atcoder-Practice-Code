input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

A <- sort(A, decreasing = TRUE)
ans <- 0
for (i in seq_len(N)) {
  if (A[i] >= i) {
    ans <- i
  } else {
    break
  }
}
cat(ans, "\n")
