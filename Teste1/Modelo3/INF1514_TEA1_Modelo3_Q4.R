calculaF <- function (x, m, s)
{
  y <- (1/(s*sqrt(2*pi)))*exp(-(1/2)*(((x - m)^2)/s))
  return(y)
}

calculaY <- function (inicial, final, intervalo, m, s)
{
  cont <- 0
  soma <- 0
  media <- NULL
  
  if ((inicial != final) & (intervalo != 0))
  {
    x <- seq(inicial, final, intervalo)
    y <- rep(0, length(x))
    
    cont <- 0
    for (valorX in x)
    {
      cont <- cont + 1
      y[cont] <- calculaF(valorX, m, s)
      soma <- soma + y[cont]
    }

    media <- soma / length(y)
    
    plot(x, y)
  }

  return(media)
}

#variáveis
valor.inicial <- 0
valor.final <- 0
valor.intervalo <- 0
valor.m <- 0
valor.s <- 0
valor.media <- 0

#inicio

valor.inicial <- -5
valor.final <- 5
valor.intervalo <- 0.02
valor.m <- -2
valor.s <- 0.25

valor.media <- calculaY(valor.inicial, valor.final, valor.intervalo, valor.m, valor.s)
print(valor.media)

#fim