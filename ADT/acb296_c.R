# ABC296 C - Gap Existence
# See problem: https://atcoder.jp/contests/abc296/tasks/abc296_c
# 2025-11-11 AC+ (ADT　20251111　EASY)

input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
X <- input[2]
A <- input[-(1:2)]

seen <- new.env(hash = TRUE, parent = emptyenv())
for (i in A) seen[[as.character(i)]] <- TRUE

ok <- FALSE
for (i in A) {
  if (!is.null(seen[[as.character(i - X)]])) {
    ok <- TRUE
    break
  }
}

cat(if (ok) "Yes\n" else "No\n")
