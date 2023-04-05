calculaIndiceRotatividade <- function (demissao, contratacao, funcionario)
{
  indice <- (demissao + contratacao) / (2 * funcionario)
  return(indice)
}

#variáveis
numero.demissao <- 0
numero.contratacao <- 0
numero.funcionario <- 0
valor.indice <- 0.0

#inicio
numero.demissao <- 100
numero.contratacao <- 130
numero.funcionario <- 2300

valor.indice <- calculaIndiceRotatividade (numero.demissao, numero.contratacao, numero.funcionario)
print(valor.indice)
#fim