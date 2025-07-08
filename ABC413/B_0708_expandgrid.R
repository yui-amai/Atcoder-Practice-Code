input <- scan("stdin", what = character(), quiet = TRUE)
N <- as.integer(input[1])
S <- input[2:(1 + N)]

# Generate all ordered pairs (i ≠ j)
pairs <- expand.grid(S, S) # Create a data frame of all combinations
pairs <- pairs[pairs$Var1 != pairs$Var2, ] # Filter out pairs where Var1 equals Var2

# Combine and deduplicate
cats <- unique(paste0(pairs$Var1, pairs$Var2))
cat(length(cats), "\n")

# ---- About combn ----
# The combn function in R generates all possible combinations of the elements of a vector.
# For example, combn(S, 2) returns all unordered pairs of S (i.e., (a, b) and (b, a) are considered the same).
# Use expand.grid instead of combn to get all ordered pairs as above.

# 449 ms 142312 KiB -> 132 ms	54104 KiB

# Or， use outer to create a matrix of all combinations
# A <- outer(S, S, paste0)
# A <- A[!diag(nrow = N, ncol = N)]
