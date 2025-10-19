# ABC428 B - Most Frequent Substrings
# See problem: https://atcoder.jp/contests/abc428/tasks/abc428_b
# 2025-10-18 AC+

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
K <- as.integer(input[2])
S <- input[3]

m <- N - K + 1
subs <- character(m)
for (i in 1:m) {
  subs[i] <- substr(S, i, i + K - 1)
}

cnt <- table(subs)
max_cnt <- max(cnt)
ans <- sort(names(cnt)[cnt == max_cnt])

cat(as.integer(max_cnt), "\n", sep = "")
cat(paste(ans, collapse = " "), "\n")
