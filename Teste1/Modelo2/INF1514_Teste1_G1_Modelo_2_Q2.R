calculaIndiceAbsenteismo <- function (hora, funcionario, jornada, dia)
{
  indice <- hora / (funcionario * jornada * dia)
  return(indice)
}

#variáveis
numero.horas.nao.trabalhada <- 0
valor.jornada <- 0
numero.funcionario <- 0
numero.dia.util <- 0
valor.indice <- 0.0

#inicio
numero.horas.nao.trabalhada <- 400
valor.jornada <- 8
numero.funcionario <- 1500
numero.dia.util <- 20

valor.indice <- calculaIndiceAbsenteismo(numero.horas.nao.trabalhada, numero.funcionario, valor.jornada, numero.dia.util)
print(valor.indice)
#fim