classificaInvestimento <- function (faturamento, nicho)
{
  retorno <- ""
  if (faturamento > 4.9) {
    retorno <- "F"
  } else if ((faturamento >= 4) & (faturamento <= 4.9) & (nicho == "L")) {
    retorno <- "D"
  } else if ((faturamento >= 4) & (faturamento <= 4.9)) {
    retorno <- "E"
  } else if ((faturamento >= 3) & (faturamento <= 3.9) & (nicho == "S")) {
    retorno <- "C"
  } else if ((faturamento >= 3) & (faturamento <= 3.9)) {
    retorno <- "B"
  } else {
    retorno <- "A"
  }
  return(retorno)
}

quantidade.investimento <- 0
valor.faturamento <- seq(1, 6, 0.2)
valor.nicho <- "S"
classificacao <- ""

for (valorF in valor.faturamento)
{
  classificacao <- classificaInvestimento(valorF, valor.nicho)
  if (classificacao == "E")
  {
    quantidade.investimento <- quantidade.investimento + 1
  }
}

print(quantidade.investimento)



