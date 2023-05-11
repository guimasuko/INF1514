rm(list=ls())

# Q1

numero_funcionarios <- 2300
numero_demissoes <- 100
numero_contratacoes <- 130

indice_rotatividade <- (numero_demissoes + numero_contratacoes)/(2*numero_funcionarios)
print(indice_rotatividade)


rm(list=ls())
# Q2

calculaIndiceRotatividade <- function(n_funcionarios, n_demissoes, n_contratacoes) {
  indice_rotatividade <- (n_demissoes + n_contratacoes)/(2*n_funcionarios)
  return(print(indice_rotatividade))
}

calculaIndiceRotatividade(2300, 100, 130)


rm(list=ls())
# Q3

calculaSeguro <- function(numero_dias) {
  valor_seguro <- 0
  if (numero_dias <= 5) {
    valor_seguro <- 300
  } else if ((numero_dias > 5) & (numero_dias <= 18)) {
    valor_seguro <- 300 + 18*(numero_dias - 5)
  } else if ((numero_dias > 18) & (numero_dias <= 30)) {
    valor_seguro <- 300 + 16*(numero_dias - 5)
  } else if (numero_dias > 30) {
    valor_seguro <- 300 + 14*(numero_dias - 5)
  }
  return(valor_seguro)
}

vetor <- 1:40

soma_seguro <- 0

for (dia in vetor){
  seguro <- calculaSeguro(dia)
  soma_seguro <- soma_seguro + seguro
}

print(soma_seguro)



rm(list=ls())
# Q4

calculaFY <- function(x) {
  y <- x^2 -2*x +1
  return(y)
}

calculaGY <- function(x) {
  y <- x^3 -4*x +5
  return(y)
}

calculaY <- function (from, to, by, operacao) {
  x <- seq(from, to, by)
  y <- rep(0, length(x))
  mean_y = NULL
  if (operacao == 'F') {
    y <- calculaFY(x)
    plot(x,y)
    mean_y = mean(y)
  } else if (operacao == 'G') {
    y <- calculaGY(x)
    plot(x,y)
    mean_y = mean(y)
  }
  return(mean_y) 
}

calculaY(-50, 50, 0.3, 'A')
calculaY(-50, 50, 0.3, 'F')
calculaY(-50, 50, 0.3, 'G')
