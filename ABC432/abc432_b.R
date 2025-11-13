# ABC432 B - Permute to Minimize
# See problem: https://atcoder.jp/contests/abc432/tasks/abc432_b
# 2025-11-15 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
X <- as.integer(strsplit(input, "")[[1]])

s <- sort(X)

if (s[1] == "0") {
  k <- which(s != "0")[1]
  first <- s[k]
  rest <- s[-k]
  s <- c(first, rest)
}

ans <- paste(s, collapse = "")
cat(ans, "\n")
