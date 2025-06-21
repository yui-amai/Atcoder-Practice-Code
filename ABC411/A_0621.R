input <- scan("stdin", what = character(), quiet = TRUE)
P <- input[1]
L <- as.integer(input[2])

length_p <- nchar(P)

if (length_p >= L) {
  cat("Yes\n")
} else {
  cat("No\n")
}
