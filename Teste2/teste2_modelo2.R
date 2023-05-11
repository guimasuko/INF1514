rm(list=ls())







rm(list=ls())

# Q1

calculaF <- function (x, y) {
  f = -3*(x^3) + (x^2) +5.7*y
  return(f)
}


calculaH <- function (x, y, z) {
  h = (x^2)*(y^4) - 7*(x^3)*(z^2) + 5
  return(h)
}


calculaF(3, -2)
calculaH(2, -5, 3)


# Q2


vetorX <- seq(from = 2, by = -0.8, length = 7)

vetorY <- c(3, -5, 7, -9, 5, 1, -3)

vetorZ <- -2:4


resultadoH <- rep(0, length(vetorX))


for (i in 1:length(vetorX)) {
  resultadoH[i] <- calculaH(vetorX[i], vetorY[i], vetorZ[i])
}

resultadoH


sum(resultadoH)
mean(resultadoH)



# Q4

processaFluxograma <- function (x, y, z, peso, retorno) {
  peso <- 2
  retorno <- 0
  
  if (x > 0) {
    if (y >= 0) {
      retorno <- calculaH(x, y, z)
    } else {
      if (z > 0) {
        peso <- peso + 3
        retorno <- calculaF(x, y) + (peso*calculaH(x, y, z))
      } else {
        retorno <- (peso*calculaF(x, y)) + calculaH(x, y, z)
      }
    }
  } else {
    peso <- peso + 1
    if (z > 0) {
      peso <- peso + 3
      retorno <- calculaF(x, y) + (peso*calculaH(x, y, z))
    } else {
      retorno <- (peso*calculaF(x, y)) + calculaH(x, y, z)
    }
  }
  
  return(retorno)
}

# 
variavelX <- 0
variavelY <- 0
variavelZ <- 0
 
variavelX <- 2
variavelY <- -3
variavelZ <- 1


processaFluxograma(variavelX, variavelY, variavelZ)















