calculaAluguel <- function (duracao)
{
  diaria <- 0  
  aluguel <- 360
  
  if ((duracao >= 7) & (duracao <= 20))
  {
    diaria <- 50
  }
  else if ((duracao >= 21) & (duracao <= 31))
  {
    diaria <- 40
  }
  else if (duracao > 31)
  {
    diaria <- 30
  }
  
  aluguel <- aluguel + diaria * (duracao - 6)

  return(aluguel)
}

#variáveis
duracao.aluguel <- NULL
valor.aluguel <- 0.0
soma.aluguel <- 0.0

#inicio
duracao.aluguel <- 1:50

for (duracao.selecionada in duracao.aluguel)
{
  valor.aluguel <- calculaAluguel(duracao.selecionada)
  soma.aluguel <- soma.aluguel + valor.aluguel
}
print(soma.aluguel)
#fim