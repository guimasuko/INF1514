rm(list=ls())



somaSequencia <- function(n) {
  # declarando uma variável que guardará o valor da soma
  soma <- 0
  # loop
  for (i in 1:n) {
    soma = soma + i 
  }
  return(soma)
}

# teste

somaSequencia(18)
