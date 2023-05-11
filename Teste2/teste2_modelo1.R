rm(list=ls())

# Q1

calculaF <- function (x,y,z) {
  f = (x^4)*y - 5*(x^2)*(z^3) - 2
  return(f)
}

calculaG <- function (x,y) {
  g = 0.9*(x^3) - 3*(x^2) + 5*y
  return(g)
}


calculaF(2,3,4)

calculaG(7,-2)



# Q2

vetorX <- seq(-3, 3, 1)
vetorY <- c(2, 4, 5, -6, 8, -3, 1)
vetorZ <- seq(-1, by=0.7, length=7)


vetorF <- rep(0, length(vetorX))

for (i in 1:length(vetorX)) {
  vetorF[i] <- calculaF(vetorX[i], vetorY[i], vetorZ[i])
}

sum(vetorF)
mean(vetorF)



# Q3

processaFluxograma <- function (x,y,z,peso=1,retorno=0) {
  if (x >= 0) {
    if (y < 0) {
      retorno <- calculaF(x,y,z)
    } else {
      if (z < 0) {
        peso = peso + 2
        retorno <- calculaF(x,y,z) + (peso*calculaG(x,y))
      } else {
        retorno <- (peso*calculaF(x,y,z)) + calculaG(x,y)
      }
    }
  } else {
    peso = peso + 1
    if (z < 0) {
      peso = peso + 2
      retorno <- calculaF(x,y,z) + (peso*calculaG(x,y))
    } else {
      retorno <- (peso*calculaF(x,y,z)) + calculaG(x,y)
    }
  }
  return(retorno)
}


processaFluxograma(-3,2,-1)




