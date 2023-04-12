calculaG <- function (x, a, b)
{
  y <- - (exp(-(1/2)*(((x - a)/b)^2))/(b*sqrt(2*pi)))
  return(y)
}

calculaY <- function (inicial, final, intervalo, a, b)
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
      y[cont] <- calculaG(valorX, a, b)
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
valor.a <- 0
valor.b <- 0
valor.media <- 0

#inicio

valor.inicial <- -5
valor.final <- 5
valor.intervalo <- 0.01
valor.a <- 1
valor.b <- 0.3

valor.media <- calculaY(valor.inicial, valor.final, valor.intervalo, valor.a, valor.b)
print(valor.media)

#fim