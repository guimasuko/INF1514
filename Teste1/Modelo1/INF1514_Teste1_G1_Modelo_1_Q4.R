calculaFY <- function (x)
{
  y <- x^2 - 2*x + 1
  return(y)
}

calculaGY <- function (x)
{
  y <- x^3 - 4*x + 5
  return(y)
}

calculaY <- function(inicial, final, intervalo, operacao)
{
  cont <- 0  
  soma <- 0
  media <- NULL
  
  x <- seq(inicial, final, intervalo)
  y <- rep(0, length(x))
  
  if (toupper(operacao) == "F")
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
  else if (toupper(operacao) == "G")
  {
    for (valorX in x)
    {
      cont <- cont + 1
      y [cont] <- calculaGY(valorX)
      soma <- soma + y [cont]
    }
    media <- soma / length(y)
    plot(x, y)    
  }
  
  return(media)
}

#variáveis
valor.inicial <- -50
valor.final <- 50
valor.intervalo <- 0.3
tipo.operacao <- ""
valor.media <- NULL

#inicio

tipo.operacao = "A"
valor.media <- calculaY(valor.inicial, valor.final, valor.intervalo, tipo.operacao)
print(valor.media)

tipo.operacao = "F"
valor.media <- calculaY(valor.inicial, valor.final, valor.intervalo, tipo.operacao)
print(valor.media)

tipo.operacao = "G"
valor.media <- calculaY(valor.inicial, valor.final, valor.intervalo, tipo.operacao)
print(valor.media)
#fim