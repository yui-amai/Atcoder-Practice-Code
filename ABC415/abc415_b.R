# ABC415 B - Pick Two
# See problem: https://atcoder.jp/contests/abc415/tasks/abc415_b
# 2025-07-19 AC+

input <- scan("stdin", what = character(), quiet = TRUE)

sep <- strsplit(input, "")[[1]]
indices <- which(sep == "#")
for (i in seq(1, length(indices), by = 2)) {
  if (i + 1 <= length(indices)) {
    cat(indices[i], ",", indices[i + 1], "\n", sep = "")
  }
}
