# ABC414 B - String Too Long
# See problem: https://atcoder.jp/contests/abc414/tasks/abc414_b
# 2025-07-12 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- character(0)

count <- 0
for (i in 1:N) {
  c <- input[2 * i]
  l <- as.numeric(input[2 * i + 1])
  count <- count + l
  if (count > 100) {
    cat("Too Long\n")
    quit(status = 0)
  }
  S <- c(S, paste(rep(c, l), collapse = ""))
}
cat(paste(S, collapse = ""), "\n")
