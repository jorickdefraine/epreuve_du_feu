arg <- as.integer(unlist(strsplit(commandArgs(trailingOnly=TRUE)," ")))

tri <- function(list){
  for (i in 1:length(list)-1){
    for (i in 1:(length(list)-1)){ #1 2 3 4
      print(list[[i+1]])
      if ((list[[i]] < list[[i+1]])){ 
        temp <- list[[i+1]]
        list[[i+1]] <- list[[i]]
        list[[i]] <- temp
      }
    }
  }
 return(list)
}

tri(arg)

