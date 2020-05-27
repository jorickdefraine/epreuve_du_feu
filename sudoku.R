sudoku <- function(tableS){
  for (row in 1:length(tableS[1,])){
    count <- 0
    for (col in 1:length(tableS[,1])){
      if (tableS[row,col]=="_"){
        count <- count + 1
      }
    }
    if (count==1){
      tableS[row,match("_",tableS[row,])] <-46-sum(as.numeric(tableS[row,]),na.rm=TRUE, dims = 1)
    }
  }
  
  for (col in 1:length(tableS[1,])){
    count <- 0
    for (row in 1:length(tableS[,1])){
      if (tableS[row,col]=="_"){
        count <- count + 1
      }
    }
    if (count==1){
      tableS[match("_",tableS[,col]),col] <-46-sum(as.numeric(tableS[,col]),na.rm=TRUE, dims = 1)
    }
  }
  print(tableS)
}

arg <- commandArgs(trailingOnly=TRUE)
tableS <- as.matrix(read.table(arg[1], sep=" "))
suppressWarnings(sudoku(tableS))