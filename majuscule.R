chaine <- commandArgs(trailingOnly=TRUE)[1]

majuscule <- function(chaine){
  split_chaine <- strsplit(chaine,"")[[1]]
  for (i in 0:length(split_chaine)){
    if ((i%%2)==0){
      split_chaine[i] <- toupper(split_chaine[i])
    }
    else{
      split_chaine[i] <- tolower(split_chaine[i])
    }
  }
  print(split_chaine, quote=FALSE)
}

majuscule(chaine)
