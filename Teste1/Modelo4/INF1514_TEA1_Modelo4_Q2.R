calculaValorPresente <- function (investimento, fluxo, taxa)
{
  retorno <- (fluxo / (1 + taxa)) + (fluxo / (1 + taxa)^2) - investimento
  return(retorno)
}

valor.investimento <- 5000
valor.fluxo <- 2500
valor.taxa <- 0.04
valor.presente <- calculaInvestimento(valor.investimento, valor.fluxo, valor.taxa)
print(valor.presente)
