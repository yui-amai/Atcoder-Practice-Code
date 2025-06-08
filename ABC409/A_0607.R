input <- scan("stdin", what = character(), quiet = TRUE)
n <- as.integer(input[1])
t_values <- input[2]
a_values <- input[3]

chars_t <- strsplit(t_values, "")[[1]]
chars_a <- strsplit(a_values, "")[[1]]
for (i in 1:n) {
  if (chars_t[i] == "o" && chars_a[i] == "o") {
    cat("Yes\n")
    quit(save = "no")
  }
}

cat("No\n")
