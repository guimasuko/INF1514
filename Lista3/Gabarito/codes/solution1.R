rm(list=ls())

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


# testando para alguns casos

convexidade(-2, 4, 6)

convexidade(1, -4, 10)
