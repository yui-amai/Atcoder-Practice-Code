# ABC357 A - Sanitize Hands
# See problem: https://atcoder.jp/contests/abc357/tasks/abc357_a
# 2025-09-11 AC+ (ADT　20250911　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
M <- input[2]
H <- input[3:(2 + N)]

remain <- M
ans <- 0L

for (i in seq_len(N)) {
  if (remain >= H[i]) {
    remain <- remain - H[i]
    ans <- i
  } else {
    break
  }
}

cat(ans, "\n")
