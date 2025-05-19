input <- scan("stdin", what = integer(), quiet = TRUE)
uniqueness <- function(){
  n <- input[1]
  n_list <- input[2:(n + 1)]
  freq_nlist <- table(n_list)
  freq <- as.numeric(freq_nlist)
  if (any(freq == 1)){
    unique <- as.numeric(names(freq_nlist[freq_nlist == 1]))
    max_unique <- max(unique)
    index_max <- which(n_list == max_unique)
    cat(index_max,"\n")
  } else{
    cat("-1\n")
  }
}
uniqueness()

