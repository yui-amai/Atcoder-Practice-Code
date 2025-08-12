# ABC386 C - Operate 1
# See problem: https://atcoder.jp/contests/abc386/tasks/abc386_c
# 2025-08-12 AC+ (ADT　20250812　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
K <- 1
S <- input[2]
T <- input[3]

if (S == T) {
  cat("Yes\n")
  quit(save = "no")
}

a <- charToRaw(S)
b <- charToRaw(T)
ns <- length(a)
nt <- length(b)

if (abs(ns - nt) > 1L) {
  cat("No\n")
  quit(save = "no")
}

if (ns == nt) {
  mism <- sum(a != b)
  cat(if (mism <= 1L) "Yes\n" else "No\n")
} else {
  if (ns < nt) {
    tmp <- a
    a <- b
    b <- tmp
    ns <- length(a)
    nt <- length(b)
  }
  i <- 1L
  j <- 1L
  while (i <= ns && j <= nt && a[i] == b[j]) {
    i <- i + 1L
    j <- j + 1L
  }
  i <- i + 1L
  ok <- TRUE
  while (i <= ns && j <= nt) {
    if (a[i] != b[j]) {
      ok <- FALSE
      break
    }
    i <- i + 1L
    j <- j + 1L
  }
  cat(if (ok) "Yes\n" else "No\n")
}
