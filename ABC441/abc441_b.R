# ABC441 B - Two Languages
# See problem: https://atcoder.jp/contests/abc441/tasks/abc441_b
# 2026-01-17 AC+

options(scipen = 100, digits = 15)
input <- scan("stdin", what = character(), quiet = TRUE)
i <- 1

N <- as.integer(input[i])
i <- i + 1
M <- as.integer(input[i])
i <- i + 1
S <- input[i]
i <- i + 1
T <- input[i]
i <- i + 1
Q <- as.integer(input[i])
i <- i + 1
words <- input[i:(i + Q - 1)]

ans <- character(Q)

for (k in 1:Q) {
  ws <- words[k]

  inS <- !grepl(paste0("[^", S, "]"), ws)
  inT <- !grepl(paste0("[^", T, "]"), ws)

  if (inS && !inT) {
    ans[k] <- "Takahashi"
  } else if (inT && !inS) {
    ans[k] <- "Aoki"
  } else {
    ans[k] <- "Unknown"
  }
}

cat(paste(ans, collapse = "\n"), "\n")
