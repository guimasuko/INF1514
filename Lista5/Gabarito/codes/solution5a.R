# função
covariancia <- function (vetor1, vetor2) {
  # tamanho do vetor
  n <- length(vetor1)
  # média do primeiro vetor
  mean_1 <- mean(vetor1)
  # média do segundo vetor
  mean_2 <- mean(vetor2)
  
  # vetor de desvios em relação a média dos vetores 1 e 2
  desvio_vetor_1 <- vetor1 - mean_1
  desvio_vetor_2 <- vetor2 - mean_2
  
  # produto dos vetores de desvios
  produto_desvios <- desvio_vetor_1 * desvio_vetor_2
  
  # somatório
  soma <- sum(produto_desvios)
  
  # divisão
  cov <- soma/(n-1)
  
  # retorno
  return(cov)
}

# teste
covariancia(mtcars$mpg, mtcars$hp)

# função built-in 
cov(mtcars$mpg, mtcars$hp)