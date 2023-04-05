rm(list=ls())

# Q1

numero_total_funcionarios <- 1500
jornada <- 8
numero_dias_uteis <- 20
numero_horas_nao_trabalhadas <- 400



indice_absenteismo <- numero_horas_nao_trabalhadas/(numero_total_funcionarios*jornada*numero_dias_uteis)
print(indice_absenteismo)



rm(list=ls())
# Q2

calculaIndiceAbsenteismo <- function(total_funcionarios, jornada_diaria, dias_uteis, horas_nao_trabalhas) {
  indice_absenteismo <- horas_nao_trabalhas/(total_funcionarios*jornada_diaria*dias_uteis)
  print(indice_absenteismo)
}

calculaIndiceAbsenteismo(
  total_funcionarios = 1500,
  jornada_diaria = 8,
  dias_uteis = 20,
  horas_nao_trabalhas = 400
)




rm(list=ls())
# Q3

calculaAluguel <- function(numero_dias) {
  valor_aluguel <- 360
  if((numero_dias > 6) & (numero_dias <= 20)) {
    valor_aluguel <- valor_aluguel + 50*(numero_dias - 6)
  } else if((numero_dias > 20) & (numero_dias <= 31)) {
    valor_aluguel <- valor_aluguel + 40*(numero_dias - 6)
  } else if(numero_dias > 31) {
    valor_aluguel <- valor_aluguel + 30*(numero_dias - 6)
  }
  return(valor_aluguel)
}


vetor <- 1:50

soma_aluguel <- 0

for (dia in vetor) {
  aluguel <- calculaAluguel(dia)
  soma_aluguel <- soma_aluguel + aluguel
}

print(soma_aluguel)




rm(list=ls())
# Q4

calculaFY <- function(x) {
  y <- x^3 -3*x +2
  return(y)
}

calculaHY <- function(x) {
  y <- x^2 -2*x -3
  return(y)
}

plotaGraficoY <- function (from, to, by, selecao) {
  x <- seq(from, to, by)
  if (selecao == 'F') {
    y <- calculaFY(x)
    return(plot(x,y))
  } else if (selecao == 'H') {
    y <-calculaHY(x)
    return(plot(x,y))
  } else {
    return(NULL)
  }
}

plotaGraficoY(-60, 60, 0.4, 'A')
plotaGraficoY(-60, 60, 0.4, 'F')
plotaGraficoY(-60, 60, 0.4, 'H')



