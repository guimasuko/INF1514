rm(list=ls())

# precisamos rodar as funções para gravar na memória do programa


# função convexidade

convexidade <- function (a, b, c) {
  # criando a variável que será retornada
  conv <- 'afim'
  # criando os casos para cada valor de a
  if (a > 0) {
    conv <- 'convexa'
  } else if (a < 0) {
    conv <- 'côncava'
  }
  return(conv)
}


# função ponto crítico

pontoCritico <- function (a, b, c) {
  # usando a fórmula para encontrar o ponto crítico
  x_star <- (-b)/(2*a)
  
  # usando o ponto crítico para achar o valor da função neste ponto
  f_x_star <- a*x_star^2 + b*x_star + c
  
  # retornamos os dois resultados
  result <- c(x_star, f_x_star)
  return(result)
}


localMaxMin <- function (a, b, c) {
  # declarando as variáveis utilizando as funções criadas
  f_x_star <- pontoCritico(a, b, c)
  conv <- convexidade(a, b, c)
  
  # criando uma variável que indica se é máximo ou mínimo
  max_min <- ''
  
  # note que o condicional precisa ser escrito da mesma forma que na função
  if (conv == 'convexa') {
    max_min <- 'mínimo'
  } else if (conv == 'côncava') {
    max_min <- 'máximo'
  }
  return(paste('O ponto',f_x_star[1],'é um ponto de',max_min,'local. O valor da função neste ponto é',f_x_star[2]))
}


# testando para alguns casos

localMaxMin(-2, 4, 6)

localMaxMin(1, -4, 10)
