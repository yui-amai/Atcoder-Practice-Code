# ABC421 E - Yacht
# See problem: https://atcoder.jp/contests/abc421/tasks/abc421_e
# 2025-08-30 WA->AC-

A <- scan("stdin", what = integer(), quiet = TRUE)
counts_map <- table(A)
vals <- as.numeric(names(counts_map))
probs <- as.numeric(counts_map) / 6.0
K <- length(vals)
log_probs <- log(probs)

memo_F <- new.env(hash = TRUE)
memo_outcomes <- new.env(hash = TRUE)
memo_choices <- new.env(hash = TRUE)
log_factorial <- lfactorial(0:5)

generate_outcomes <- function(r) {
  key <- as.character(r)
  if (exists(key, envir = memo_outcomes)) {
    return(memo_outcomes[[key]])
  }

  if (r == 0) {
    return(list(list(counts = rep(0, K), prob = 1.0)))
  }

  results <- list()
  gen_rec <- function(face_idx, rem, current_counts) {
    if (face_idx == K - 1) {
      counts <- c(current_counts, rem)
      log_prob <- log_factorial[r + 1] - sum(log_factorial[counts + 1]) + sum(counts * log_probs)
      prob <- exp(log_prob)
      results[[length(results) + 1]] <<- list(counts = counts, prob = prob)
      return()
    }
    for (i in 0:rem) {
      gen_rec(face_idx + 1, rem - i, c(current_counts, i))
    }
  }

  gen_rec(0, r, c())
  memo_outcomes[[key]] <- results
  return(results)
}

generate_choices <- function(P_counts) {
  key <- paste(P_counts, collapse = "-")
  if (exists(key, envir = memo_choices)) {
    return(memo_choices[[key]])
  }

  results <- list()
  gen_rec <- function(face_idx, current_T_counts) {
    if (face_idx > K) {
      results[[length(results) + 1]] <<- current_T_counts
      return()
    }
    for (i in 0:P_counts[face_idx]) {
      gen_rec(face_idx + 1, c(current_T_counts, i))
    }
  }

  gen_rec(1, c())
  memo_choices[[key]] <- results
  return(results)
}


F <- function(t, k_counts) {
  key <- paste(t, paste(k_counts, collapse = "-"), sep = ";")
  if (exists(key, envir = memo_F)) {
    return(memo_F[[key]])
  }

  num_to_roll <- 5 - sum(k_counts)

  if (t == 1) {
    if (num_to_roll == 0) {
      result <- max(vals * k_counts)
    } else {
      ans <- 0.0
      roll_outcomes <- generate_outcomes(num_to_roll)
      for (item in roll_outcomes) {
        final_counts <- k_counts + item$counts
        best_score <- max(vals * final_counts)
        ans <- ans + item$prob * best_score
      }
      result <- ans
    }
  } else {
    if (num_to_roll == 0) {
      result <- F(t - 1, k_counts)
    } else {
      total_expected_value <- 0.0
      roll_outcomes <- generate_outcomes(num_to_roll)
      for (item in roll_outcomes) {
        r_counts <- item$counts
        prob <- item$prob

        best_next_state_value <- -1.0
        keep_choices <- generate_choices(r_counts)
        for (d_counts in keep_choices) {
          k2_counts <- k_counts + d_counts
          best_next_state_value <- max(best_next_state_value, F(t - 1, k2_counts))
        }
        total_expected_value <- total_expected_value + prob * best_next_state_value
      }
      result <- total_expected_value
    }
  }

  memo_F[[key]] <- result
  return(result)
}

k0 <- rep(0, K)
final_answer <- F(3, k0)
cat(sprintf("%.10f\n", final_answer))
