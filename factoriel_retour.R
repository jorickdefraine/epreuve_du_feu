nombre <- as.numeric(commandArgs(trailingOnly=TRUE)[1])

factoriel <- function(nombre){
  if (nombre<=0){
    return(1)
  }
  else{
    factoriel(nombre-1)*nombre
  }
}

sprintf("%.f", factoriel(nombre))
