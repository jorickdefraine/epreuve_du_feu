arg <- commandArgs(trailingOnly=TRUE)

#mot <- strsplit("arbre", NULL)[[1]]

mot <- strsplit(arg[1], NULL)[[1]]
dico <- as.matrix(read.table(arg[2]))

#dico <- as.matrix(read.table("fr.txt"))
#dico

anagramme <- function(mot,dico){
  count <- 0
  for (element in dico){
    if (nchar(element)==length(mot)){
      for (lettremot in mot){
        for (lettreelement in strsplit(element, NULL)[[1]]){
          if(lettremot==lettreelement){
            if (count==length(mot)){
              count <- 0
              print(element)
            }
            else{
              count <- count+ 1
            }
          }
        }
      }
    }
  }
}

anagramme(mot,dico)

