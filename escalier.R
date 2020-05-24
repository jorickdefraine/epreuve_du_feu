#!/usr/bin/env Rscript
argv <- commandArgs(trailingOnly=TRUE)
etage <- as.numeric(argv[1])

escalier <- function(etage){
  if (etage!=0){
    for (i in 1:etage){
      ligne <- c(rep(" ", times=etage-i), rep("#", times = i, quote = FALSE))
      print(ligne, quote = FALSE)
    }
  }
  else{print(' ', quote = FALSE)}
}

escalier(etage)
