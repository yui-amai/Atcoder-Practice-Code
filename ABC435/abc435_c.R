# ABC435 C - Domino
# See problem: https://atcoder.jp/contests/abc435/tasks/abc435_c
# 2025-12-06 WA->AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[-1]

dom <- 1L
for (i in 1:N) {
  if (i <= dom) {
    fall <- A[i] + i - 1L
    if (fall > dom) {
      dom <- fall
    }
  } else {
    break
  }
}

if (dom > N) dom <- N
cat(dom, "\n")
