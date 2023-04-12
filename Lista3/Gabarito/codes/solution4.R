rm(list=ls())


# precisamos rodar as funções para gravar na memória do programa


# função que encontra as raízes

raizes_funcao_2grau <- function (a, b, c){
  # primeiro definimos o delta
  delta = b^2 - 4*a*c
  # apos isso, vamos quebrar nos três casos
  if(delta < 0){
    # se o delta é negativo, a parabola não tem raíz
    return(paste("Essa função não tem raízes. A parábola não corta o eixo das abscissas!"))
  } else if(delta == 0){
    # se o delta é igual a zero, a raíz é unitária
    x = (-b)/(2*a)
    return(paste("Essa função tem apenas uma raíz. Seu valor é",x,"."))
  } else{
    # se o delta é positivo, então temos duas raízes
    x_1 = (-b + sqrt(delta))/(2*a)
    x_2 = (-b - sqrt(delta))/(2*a)
    return(paste("Essa função tem duas raízes. As duas raízes dessa função são respectivamente",x_1,"e",x_2,"."))
  }
}


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


# função que verifica se é máximo ou mínimo

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




equacao_2grau <- function (a, b, c) {
  # declarando os resultados
  raizes <- raizes_funcao_2grau(a, b, c)
  maxMin <- localMaxMin(a, b, c)
  
  return(paste(raizes, maxMin))
}


# testando para alguns casos

equacao_2grau(-2, 4, 6)

equacao_2grau(1, -4, 10)
