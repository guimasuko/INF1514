


# Q3

rm(list=ls())

classificaEmpresa <- function(divida, segmento) {
  classificacao <- ''
  if (divida <= 5) {
    classificacao <- 'A'
  } else if ((divida >= 5) & (divida <= 5.9) & (segmento != 'Y')) {
    classificacao <- 'B'
  } else if (((divida >= 5) & (divida <= 5.9)) & (segmento == 'Y')) {
    classificacao <- 'C'
  } else if (((divida >= 6) & (divida <= 6.9)) & (segmento != 'X')) {
    classificacao <- 'C'
  } else if (((divida >= 6) & (divida <= 6.9)) & (segmento == 'X')) {
    classificacao <- 'D'
  } else {
    classificacao <- 'E'
  }
  return(classificacao)
}


vetor_dividas <- seq(1, 10, 0.3)

count <- 0

for (divida in vetor_dividas) {
  resultado <- classificaEmpresa(divida, 'X')

  if (resultado == 'D') {
    count <- count + 1
  }
}

print(count)





# Q4

rm(list=ls())


calculaFY <- function (x, mu, sigma) {
  z = (x - mu)/sigma 
  f = (1 / (sigma * sqrt(2*pi) ) ) * exp( (-1/2) * ( z^2 ) )
  return(f)
}



plotaGraficoY <- function(valor_inicial, valor_final, intervalo, mu, sigma) {
  if ((valor_inicial == valor_final) | (intervalo == 0)) {
    return(NULL)
  } else {
    x <- seq(valor_inicial, valor_final, intervalo)
    y <- calculaFY(x, mu, sigma)
    mean_y <- mean(y)
    plot(x, y)
    return(mean_y)
  }
}


plotaGraficoY(-5, 5, 0.02, -2, 0.25)
