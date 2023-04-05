calculaSeguro <- function (duracao)
{
  diaria <- 0  
  seguro <- 300
  
  if ((duracao >= 6) & (duracao <= 18))
  {
    diaria <- 18
  }
  else if ((duracao >= 19) & (duracao <= 30))
  {
    diaria <- 16
  }
  else if (duracao > 30)
  {
    diaria <- 14
  }
  
  seguro <- seguro + diaria * (duracao - 5)
  
  return(seguro)
}

#variáveis
duracao.viagem <- NULL
valor.seguro <- 0.0
soma.seguro <- 0.0

#inicio
duracao.viagem <- 1:40

for (duracao.selecionada in duracao.viagem)
{
  valor.seguro <- calculaSeguro(duracao.selecionada)
  soma.seguro <- soma.seguro + valor.seguro
}
print(soma.seguro)
#fim