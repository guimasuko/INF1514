calculaImposto <- function (rendimento, dia)
{
  imposto <- rendimento * 0.03 * (30 - dia)
  return(imposto)
}

valor.rendimento <- 1000 
numero.dia <- 15
imposto <- 0

imposto <- calculaImposto(valor.rendimento, numero.dia)
print(imposto)