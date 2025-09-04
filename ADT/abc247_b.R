# ABC247 B - Unique Nicknames
# See problem: https://atcoder.jp/contests/abc247/tasks/abc247_b
# 2025-09-04 AC+ (ADT　20250904　EASY)

input <- readLines("stdin", warn = FALSE)

N <- as.integer(input[1])
st <- do.call(rbind, strsplit(input[2:(N + 1)], "\\s+"))
s <- st[, 1]
t <- st[, 2]

freq <- table(c(s, t))

ok <- TRUE
for (i in seq_len(N)) {
  same <- as.integer(s[i] == t[i])
  others_s <- as.integer(freq[s[i]]) - 1L - same
  others_t <- as.integer(freq[t[i]]) - 1L - same
  if (others_s > 0L && others_t > 0L) {
    ok <- FALSE
    break
  }
}

cat(if (ok) "Yes\n" else "No\n")
