input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
D <- input[-1]

cum <- c(0, cumsum(D))

for (i in 1:(N - 1)) {
  for (j in (i + 1):N) {
    cat(cum[j] - cum[i])
    if (j < N) cat(" ")
  }
  cat("\n")
}
