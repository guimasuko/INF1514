calculaFY <- function (x)
{
  y <- x^3 - 3*x + 2
  return(y)
}

calculaHY <- function (x)
{
  y <- x^2 - 2*x - 3
  return(y)
}

plotaGraficoY <- function(inicial, final, intervalo, selecao)
{
  cont <- 0  
  soma <- 0
  media <- NULL
  
  x <- seq(inicial, final, intervalo)
  y <- rep(0, length(x))
  
  if (toupper(selecao) == "F")
  {
    for (valorX in x)
    {
      cont <- cont + 1
      y [cont] <- calculaFY(valorX)
      soma <- soma + y [cont]
    }
    media <- soma / length(y)
    plot(x, y)    
  }
  else if (toupper(selecao) == "H")
  {
    for (valorX in x)
    {
      cont <- cont + 1
      y [cont] <- calculaHY(valorX)
      soma <- soma + y [cont]
    }
    media <- soma / length(y)
    plot(x, y)    
  }
  
  return(media)
}

#variáveis6
valor.inicial <- -60
valor.final <- 60
valor.intervalo <- 0.4
tipo.selecao <- ""
valor.media <- NULL

#inicio

tipo.selecao = "A"
valor.media <- plotaGraficoY(valor.inicial, valor.final, valor.intervalo, tipo.selecao)
print(valor.media)

tipo.selecao = "F"
valor.media <- plotaGraficoY(valor.inicial, valor.final, valor.intervalo, tipo.selecao)
print(valor.media)

tipo.selecao = "H"
valor.media <- plotaGraficoY(valor.inicial, valor.final, valor.intervalo, tipo.selecao)
print(valor.media)
#fim