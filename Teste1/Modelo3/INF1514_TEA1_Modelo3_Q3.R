classificaEmpresa <- function (divida, segmento)
{
  retorno <- ""
  if (divida > 6.9) {
    retorno <- "F"
  } else if ((divida >= 6) & (divida <= 6.9) & (segmento == "X")) {
    retorno <- "D"
  } else if ((divida >= 6) & (divida <= 6.9)) {
    retorno <- "C"
  } else if ((divida >= 5) & (divida <= 5.9) & (segmento == "Y")) {
    retorno <- "C"
  } else if ((divida >= 5) & (divida <= 5.9)) {
    retorno <- "B"
  } else {
    retorno <- "A"
  }
  return(retorno)
}

quantidade.empresa <- 0
valor.divida <- seq(1, 10, 0.3)
valor.segmento <- "X"
classificacao <- ""

for (valorD in valor.divida)
{
  classificacao <- classificaEmpresa(valorD, valor.segmento)
  if (classificacao == "D")
  {
    quantidade.empresa <- quantidade.empresa + 1
  }
}

print(quantidade.empresa)



