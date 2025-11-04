# ABC390 C - Paint to make a rectangle
# See problem: https://atcoder.jp/contests/abc390/tasks/abc390_c
# 2025-11-04 TLE->AC+ (ADT　20251104　EASY)

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

hw <- strsplit(lines[1], "\\s+")[[1]]
H <- as.integer(hw[1])
W <- as.integer(hw[2])
S <- lines[2:(H + 1)]

rmin <- Inf
rmax <- -Inf
cmin <- Inf
cmax <- -Inf

for (i in 1:H) {
  pos <- gregexpr("#", S[i], fixed = TRUE)[[1]]
  if (pos[1] != -1) {
    rmin <- min(rmin, i)
    rmax <- max(rmax, i)
    cmin <- min(cmin, pos[1])
    cmax <- max(cmax, tail(pos, 1))
  }
}

ans <- TRUE

for (i in rmin:rmax) {
  seg <- substr(S[i], cmin, cmax)
  if (grepl(".", seg, fixed = TRUE)) {
    ans <- FALSE
    break
  }
}

cat(if (ans) "Yes\n" else "No\n")

# Find the bounding rectangle of all '#' and ensure no '.' exists inside it.
