# TLE

options(scipen = 100, digits = 15)
con <- file("stdin", "r")
lines <- readLines(con)
close(con)

first_line <- as.integer(strsplit(lines[1], " ")[[1]])
N <- first_line[1]
Q <- first_line[2]

server <- ""
pc <- rep("", N)

for (i in seq_len(Q)) {
  query <- strsplit(lines[i + 1], " ")[[1]]
  type <- as.integer(query[1])
  p <- as.integer(query[2])
  if (type == 1) {
    pc[p] <- server
  } else if (type == 2) {
    s <- query[3]
    pc[p] <- paste0(pc[p], s)
  } else if (type == 3) {
    server <- pc[p]
  }
}

cat(server, "\n")
