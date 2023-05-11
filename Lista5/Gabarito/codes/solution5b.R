# função
correlacao <- function (vetor1, vetor2) {
  # covariância
  cov <- covariancia(vetor1, vetor2)
  
  # desvios-padrão dos vetores 1 e 2
  sd1 <- sd(vetor1)
  sd2 <- sd(vetor2)
  
  # correlação
  corr <- cov/(sd1*sd2)
  
  # retorno
  return(corr)
}