# ABC428 C - Brackets Stack Query
# See problem: https://atcoder.jp/contests/abc428/tasks/abc428_c
# 2025-10-18 AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

Q <- as.integer(lines[1][[1]])
bal <- integer(Q + 1)
bal[1] <- 0
bad <- logical(Q + 1)
bad[1] <- FALSE
idx <- 1
ans <- character(Q)

for (i in 1:Q) {
  line <- lines[i + 1]

  if (substr(line, 1, 1) == "1") {
    brkt <- substr(line, 3, 3)
    diff <- if (brkt == "(") 1 else -1

    new_bal <- bal[idx] + diff
    new_bad <- bad[idx] || (new_bal < 0)

    idx <- idx + 1
    bal[idx] <- new_bal
    bad[idx] <- new_bad
  } else {
    idx <- idx - 1
  }

  ans[i] <- if (bal[idx] == 0 && !bad[idx]) "Yes" else "No"
}

cat(paste(ans, collapse = "\n"), "\n")
