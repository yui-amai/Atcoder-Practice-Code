# ABC307 B - racecar
# See problem: https://atcoder.jp/contests/abc307/tasks/abc307_b
# 2025-08-27 AC+ (ADT　20250827　EASY)

input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[-1]

ok <- FALSE
for (i in 1:N) {
  for (j in 1:N) {
    if (i == j) next
    T <- paste0(S[i], S[j])
    cs <- strsplit(T, "", fixed = TRUE)[[1]]
    if (all(cs == rev(cs))) {
      ok <- TRUE
      break
    }
  }
  if (ok) break
}

cat(if (ok) "Yes\n" else "No\n")
