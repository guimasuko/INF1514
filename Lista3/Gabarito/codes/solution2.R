rm(list=ls())

pontoCritico <- function (a, b, c) {
  # usando a fórmula para encontrar o ponto crítico
  x_star <- (-b)/(2*a)
  
  # usando o ponto crítico para achar o valor da função neste ponto
  f_x_star <- a*x_star^2 + b*x_star + c
  
  # retornamos os dois resultados
  result <- c(x_star, f_x_star)
  return(result)
}


# testando para alguns casos

pontoCritico(-2, 4, 6)

pontoCritico(1, -4, 10)
