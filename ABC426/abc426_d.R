# ABC426 D - Pop and Insert
# See problem: https://atcoder.jp/contests/abc426/tasks/abc426_d
# 2025-10-04 TLE->AC+

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con, warn = FALSE)
close(con)

T <- as.integer(lines[1])
idx <- 2
ans <- integer(T)

for (t in 1:T) {
  N <- as.integer(lines[idx])
  idx <- idx + 1
  S <- as.integer(strsplit(lines[idx], "")[[1]])
  idx <- idx + 1

  ans_case <- Inf

  for (bi in 0:1) {
    chg <- 1 - bi
    intvls_list <- list()
    p <- 1
    i <- 1

    cnt <- 0
    while (i <= N && S[i] == bi) {
      cnt <- cnt + 1
      i <- i + 1
    }
    intvls_list[[p]] <- cnt
    p <- p + 1

    k <- 0
    while (i <= N) {
      while (i <= N && S[i] == chg) i <- i + 1
      k <- k + 1
      cnt <- 0
      while (i <= N && S[i] == bi) {
        cnt <- cnt + 1
        i <- i + 1
      }
      intvls_list[[p]] <- cnt
      p <- p + 1
    }
    intvls <- unlist(intvls_list, use.names = FALSE)
    if (k == 0) {
      ans_case <- 0
    } else {
      l <- 1
      r <- k
      total <- 0
      while (l <= r) {
        if (l == r) {
          intvl_l <- intvls[l]
          intvl_r <- intvls[l + 1]
          total <- total + if (intvl_l <= intvl_r) intvl_l else intvl_r
          break
        } else {
          intvl_l <- intvls[l]
          intvl_r <- intvls[r + 1]
          if (intvl_l <= intvl_r) {
            total <- total + intvl_l
            l <- l + 1
          } else {
            total <- total + intvl_r
            r <- r - 1
          }
        }
      }
      ini_cnt <- sum(S == chg)
      cur <- as.integer(ini_cnt + 2 * total)
      if (cur < ans_case) ans_case <- cur
    }
  }

  ans[t] <- as.integer(ans_case)
}

cat(paste(ans, collapse = "\n"), "\n")
