# ABC433 C - 1122 Substring 2
# See problem: https://atcoder.jp/contests/abc433/tasks/abc433_c
# 2025-11-22 WA->AC-

S <- trimws(readLines("stdin", n = 1))

digits <- as.integer(strsplit(S, "", fixed = TRUE)[[1]])
n <- length(digits)

ans <- 0L

prev_num <- NA_integer_
prev_len <- 0L
curr_num <- digits[1]
curr_len <- 1L

if (n >= 2) {
  for (i in 2:n) {
    if (digits[i] == curr_num) {
      curr_len <- curr_len + 1L
    } else {
      if (!is.na(prev_num) && curr_num == prev_num + 1L) {
        ans <- ans + min(prev_len, curr_len)
      }
      prev_num <- curr_num
      prev_len <- curr_len
      curr_num <- digits[i]
      curr_len <- 1L
    }
  }
}

if (!is.na(prev_num) && curr_num == prev_num + 1L) {
  ans <- ans + min(prev_len, curr_len)
}

cat(ans, "\n")
