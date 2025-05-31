input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[2:(N + 1)]

compression <- function() {
  com <- sort(unique(A))
  length <- length(com)
  cat(length, "\n")
  cat(com, "\n")
}

compression()
