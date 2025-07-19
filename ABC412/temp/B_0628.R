input <- scan("stdin", what = character(), quiet = TRUE)
S <- input[1]
T <- input[2]

S_chars <- strsplit(S, "")[[1]]
T_chars <- strsplit(T, "")[[1]]

for (i in seq(2, length(S_chars))) {
  if (grepl("[A-Z]", S_chars[i])) {
    if (!(S_chars[i - 1] %in% T_chars)) {
      cat("No\n")
      quit(save = "no", status = 0)
    }
  }
}

cat("Yes\n")
