rm(list=ls())


calculaFatorial <- function (n) {
  # declarando uma variável que guardará o valor do produtório 
  fatorial = 1
  
  # loop
  for (i in 1:n) {
    fatorial = fatorial*i
  }
  return(fatorial)
}


calculaFatorial(14)
