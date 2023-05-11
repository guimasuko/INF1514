rm(list=ls())

# Prova 1 - Modelo 1


# Q1

calculaMontanteFinal <- function (capital_investido, taxa_juros, tempo_investimento) {
  # fórmula
  montante_final <- capital_investido*((1 + taxa_juros)^tempo_investimento)
  
  return(montante_final)
}


# tempo de investimento
ano <- 1:10

capital <- 1000
taxa <- 0.03

vetor_montante_final <- rep(0, length(ano))

for (index in 1:length(ano)) {
  vetor_montante_final[index] <- calculaMontanteFinal(capital, taxa, ano[index])
}


mean(vetor_montante_final)



# Q2


# a)
v <- seq(2, 40, 2)
v


# b)

sum(v)


# c)

condicao <- (v %% 5) == 0

v.selecionado <- v[condicao]
v.selecionado


# d)

v.dividido <- v / 4
v.dividido


# e)

mean(v + v.dividido)




rm(list=ls())
# Q3

# maneira usando for, if, nrow() e ncol()

calcula.soma <- function (m) {
  soma <- 0
  
  for (row in 1:nrow(m)) {
    for (col in 1:ncol(m)) {
      if (m[row, col] > 8) {
        soma <- soma + m[row, col]
      }
    }
  }
  return(soma)
}

# outra maneira

calcula.soma2 <- function (m) {
  condicao <- m > 8
  soma <- sum(m[condicao])
  
  return(soma)
}


# teste
matriz <- matrix(1:12, nrow = 3, ncol = 4)
matriz

calcula.soma(matriz)

calcula.soma2(matriz)


rm(list=ls())
# Q4

# a)

Ano <- 2019:2022
PrecoVenda <- c(26200.00, 27800.00, 28200.00, 31500.00)
Quantidade <- c(21, 25, 22, 26)


carro <- data.frame(Ano, PrecoVenda, Quantidade)
View(carro)


# b)

order(carro$Quantidade)

carro[order(carro$Quantidade), ]

View(carro[order(carro$Quantidade), ])


# c)

carro$Receita <- carro$PrecoVenda * carro$Quantidade
carro$Receita


# d)

mean(carro$Quantidade)


# e)

carro$PrecoVenda > 26600

carro[carro$PrecoVenda > 26600, c(1,3)]


rm(list=ls())
# Q5

encontra.valor <- function (x, y) {
  repetido <- NULL
  for (index_x in 1:length(x)) {
    for (index_y in 1:length(y)) {
      if (x[index_x] == y[index_y]) {
        repetido <- append(repetido, x[index_x])
      }
    }
  }
  
  quantidade <- length(repetido)
  return(quantidade)
}


# teste
x_test <- c(1,5,10,5,200)
y_test <- c(2,2,4,5,7,9,13,15,200)

encontra.valor(x_test, y_test)
