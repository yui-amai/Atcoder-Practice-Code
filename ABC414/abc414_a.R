# ABC414 A - Streamer Takahashi
# See problem: https://atcoder.jp/contests/abc414/tasks/abc414_a
# 2025-07-12 AC+

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
L <- input[2]
R <- input[3]

count <- 0
for (i in 1:N) {
  X <- input[2 * i + 2]
  Y <- input[2 * i + 3]
  if (X <= L && Y >= R) {
    count <- count + 1
  }
}
cat(count, "\n")
