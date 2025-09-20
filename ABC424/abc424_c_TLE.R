# ABC424 C - New Skill Acquired
# See problem: https://atcoder.jp/contests/abc424/tasks/abc424_c
# 2025-09-20 TLE

options(scipen = 100, digits = 15)
input <- scan("stdin", what = integer(), quiet = TRUE)
N <- input[1]
A <- input[seq(2, by = 2, length.out = N)]
B <- input[seq(3, by = 2, length.out = N)]

learned <- rep(FALSE, N)
post <- integer(0)

for (i in 1:N) {
  if (A[i] == 0 && B[i] == 0) {
    learned[i] <- TRUE
    post <- c(post, i)
  }
}

pre <- vector("list", N)
for (i in 1:N) {
  if (A[i] > 0) pre[[A[i]]] <- c(pre[[A[i]]], i)
  if (B[i] > 0) pre[[B[i]]] <- c(pre[[B[i]]], i)
}

while (length(post) > 0) {
  cur <- post[1]
  post <- post[-1]
  for (nxt in pre[[cur]]) {
    if (!learned[nxt] && (learned[A[nxt]] || learned[B[nxt]])) {
      learned[nxt] <- TRUE
      post <- c(post, nxt)
    }
  }
}

cat(sum(learned), "\n")
