arg <- commandArgs(trailingOnly=TRUE)

c1 <- as.matrix(read.table(arg[1], sep=" "))
colnames(c1) <- NULL

c2 <- as.matrix(read.table(arg[2], sep=" "))
colnames(c2) <- NULL

rectangle <- function(c1,c2){
  for (j in 1:(ncol(c2)-ncol(c1)+1)){
    for (i in 1:(nrow(c2)-nrow(c1)+1)){
      if(identical(c1,c2[i:(nrow(c1)+i-1),j:(ncol(c1)+j-1)])){
        result <- c(j-1,i-1)
        return(result)
      }
    }
  }
}

rectangle(c1,c2)
