input <- scan("stdin", quiet = TRUE)

N <- input[1]
Q <- input[2]
X <- input[3:(Q + 2)]

count <- integer(N)
ans <- integer(Q)

for (i in seq_len(Q)) {
  if (X[i] > 0) {
    box <- X[i]
  } else {
    box <- which.min(count)
  }
  count[box] <- count[box] + 1
  ans[i] <- box
}

cat(ans, sep = " ", "\n")
