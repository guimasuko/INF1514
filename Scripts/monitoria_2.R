rm(list=ls())


# Material 5 - Slide 3

# Plotar o gráfico de y dado um intervalo de x.
# Parâmetro: inicial, valor inicial do eixo x.
# Parâmetro: final, valor final do eixo x.
# Parâmetro: intervalo, intervalo utilizado para calcular os valores de x.
# Retorna: média dos valores calculados para y.
plotaGrafico <- function (inicial, final, intervalo) {
  soma <- 0.0 # Acumula a soma dos valores de y.
  x <- seq (inicial, final, intervalo) # Vetor com os valores de x.
  y <- rep (0, length(x)) # Vetor com os valores de y.
  cont <- 0 # Contador auxiliar para calcular os valores de y.
  while (cont < length(x)) { # Percorre o vetor x e calcula o valor de y.
    cont <- cont + 1
    y[cont] <- calculaY(x[cont]) # calculaY retorna o valor de y dado um valor de x.
    soma <- soma + y[cont]
  }
  plot (x, y) # Plota o gráfico de x por y.
  return(soma/cont) # Retorna a média dos valores de y.
}

plotaGrafico(1,10,1) # teste




# Material 5 - Slide 8

# Apresenta boa prática de identação
plotaGrafico <- function (inicial, final, intervalo) {
  soma <- 0.0
  x <- seq (inicial, final, intervalo)
  y <- rep (0, length (x))
  cont <- 0
  while (cont < length (x))
  {
    cont <- cont + 1
    y[cont] <- calculaY (x[cont])
    soma <- soma + y[cont]
  }
  plot (x, y)
  return (soma/cont)
}


# Não apresenta boa prática de identação
plotaGrafico <- function (inicial, final, intervalo) {
  soma<-0.0
  x<-seq (inicial, final, intervalo)
  y<-rep (0, length(x))
  cont<-0
  while(cont<length(x)){
    cont<-cont + 1
    y[cont]<-calculaY(x[cont])
    soma<-soma+y[cont]
  }
  plot(x,y)
  return(soma/cont)
}




# Material 5 - Slide 12

calcularImposto = function (salarioPessoa) {
  imposto <- 0.0
  if (salarioPessoa <= 1903.98)
  {
    imposto <- 0
  }
  else if(salarioPessoa <= 3751.05)
  {
    imposto <- salarioPessoa * (15/100) - 130
  }
  else
  {
    imposto <- salarioPessoa * (27.5/100) - 330
  }
  return(imposto)
}


# Material 5 - Slide 14

x <- 0
while (x <= 5){
  x <- x + 1
  print (x)
}


# Material 5 - Slide 15

# Exercício 1 
# Escreva uma função chamada somaValor que recebe um número inteiro 𝒏
# como parâmetro e retorna a soma dos números pares até 𝒏 utilizando a
# instrução while.

somaValor <- function (n) {
  
  soma <- 0
  
  count <- 1
  while (count <= n) {
    
    if ((count %% 2) == 0) {
      soma <- soma + count
    } 
    
    count <- count + 1
  }
  
  return(soma)
}

# teste
somaValor(10)


# Material 5 - Slide 17

x <- 0

repeat {
  x <- x + 1
  print (x)
  if (x > 5)
  {
    break # para o repeat
  }
}

# Material 5 - Slide 18

x <- 0

repeat {
  x <- x + 1
  if (x == 2)
  {
    next # pula para nova iteração
  }
  print (x)
  if (x > 5)
  {
    break # para o repeat
  }
}


# Material 5 - Slide 19

# Exercício 2
# Escreva uma função chamada somaValor que recebe um número inteiro 𝒏
# como parâmetro e retorna a soma dos números pares até 𝒏 utilizando a
# instrução repeat

somaValor <- function (n) {
  soma <- 0
  count <- 0
  
  repeat {
    count <- count + 1
    if ((count %% 2) == 0) {
      soma <- soma + count
    }
    
    if (count == n) {
      break
    }
  }
  return(soma)
}

# teste
somaValor(10)


# Material 5 - Slide 21

x <- 1:6

for (i in x) {
  print (i)
}


# Material 5 - slide 22

# Exercício 3
# Escreva uma função chamada somaValor que recebe um número inteiro 𝒏
# como parâmetro e retorna a soma dos números pares até 𝒏 utilizando a
# instrução for.

somaValor <- function (n) {
  soma <- 0
  
  for (i in 1:n) {
    if ((i %% 2) == 0) {
      soma <- soma + i
    }
  }
  
  return(soma)
}

for (i in 1:12) {
  print(somaValor(i))
}



rm(list=ls())


# Material 6 - Slide 4

sequencia <- 2:5
sequencia

length(sequencia)

class(sequencia)

cor <- c("verde", "azul")
cor

length(cor)

class(cor)



# Material 6 - Slide 5

# :
v <- 1:5
v

v <- -3:3
v

v <- 2*(1:5)
v

v <- (2*1):5
v

v <- 2*1:5
v

# scan()
v <- scan()
v

v <- scan(what = " ", sep = ",")
v

# c()
v <- c(3,4,8,9)
v

v <- c('verde', 'amarelo')
v


# rep()
v <- rep(1, 3)
v

v <- rep('A', 4)
v

v <- rep(c(3,4), 2)
v

# seq()
v <- seq(from=-2, to=1.5, by=0.25)
v

v <- seq(-1,1,0.5)
v


v <- seq(from=0, by=3, length=6)
v


# Material 6 - Slide 11

v1 <- 1:5
v1

class(v1)

v2 <- c(6L,7L,8L)
v2

class(v2)

v <- c(v1, v2)
v

class(v)


v1 <- c("verde", "amarelo")
v1

class(v1)


v2 <- c("azul", "branco")
v2

class(v2)


v <- c(v1, v2)
v

class(v)



# Material 6 - Slide 12

v <- 1:5
v

v <- v - 1
v

v <- v*2
v


peso <- c(57, 63, 68, 78, 96)
altura <- c(1.65, 1.90, 1.85, 1.67, 1.73)
imc <- peso/(altura^2)
imc

# Material 6 - Slide 13

min(altura)

max(altura)

range(altura)

mean(altura)

var(altura)

sum(altura)

length(altura)

sum(altura) / length(altura)


# Material 6 - Slide 14

v <- 1:5
v

v < 2

v > 3


v <- c(3,4,8,9)
v

v <= 4


v <- rep(c(3,4), 2)
v

v >= 3


v <- seq(-1,1,0.5)
v

v == 1

v != 1


# Material 6 - Slide 16

v <- 1:5
v

(v > 2) & (v < 4)


v <- c(3,4,8,9)
v

(v <= 4) | (v == 9)


v <- seq(-1,1,0.5)
v

xor((v == 1), (v > 0))



# Material 6 - Slide 18

v <- c(2, 5, 7, 8, 9, 10, 12, 3, 7, 9)
v

a <- v[6]
a

b <- v[3:5]
b

c <- v[c(2,4,10)]
c

d <- v[v > 6]
d

e <- v[(v > 6) & (v <= 9)]
e


# Material 6 - Slide 19

v <- c(0, 1.8, "verde")
v

v <- c(TRUE, FALSE, 2)
v

v <- c(TRUE, FALSE, 'verde')
v


# Material 6 - Slide 20

v <- 0:5
v

class(v)


a <- as.numeric(v)
a

class(a)


b <- as.logical(v)
b

class(b)


c <- as.character(v)
c

class(c)



# Material 6 - Slide 21

v <- c(0, 0.5, 1, 2, FALSE, TRUE)
v

a <- as.logical(v)
a


v <- c(1, 3.2, TRUE, 'c')
v

b <- as.numeric(v)
b



# Material 6 - Slide 22

# Exercício 1
# Defina um vetor “v” com a sequência de números ímpares maiores que zero e
# menores que 50. A seguir:
#   • apresente um vetor “v.produto” que contém o produto por elemento do vetor “v” por
#   2
#
#   • apresente um vetor “v.produto.filtrado” com somente os elementos do vetor
#   “v.produto” com valor maior ou igual a 30.
# 
#   • armazene em um objeto “v.produto.filtrado.soma” a soma dos elementos do vetor
#   “v.produto.filtrado”.

v <- seq(1, 50, 2)
v

v.produto <- 2*v
v.produto

v.produto.filtrado <- v.produto[v.produto >= 30]
v.produto.filtrado

v.produto.filtrado.soma <- sum(v.produto.filtrado)
v.produto.filtrado.soma



# Material 6 - Slide 24

v <- 1:12

mat <- matrix(v, ncol=3)
mat

mode(mat)

class(mat)

length(mat)

dim(mat)

dimnames(mat)


# Material 6 - Slide 25

v <- 1:12
mat <- matrix(v, ncol=3)
mat

mat <- matrix(v, ncol=3, byrow=TRUE)
mat


v <- scan()
mat <- matrix(v, ncol=2)
mat

v <- scan(what = character(), sep = ",")
mat <- matrix(v, ncol=2)
mat


v <- c(3,4,8,9)
mat <- matrix(v, nrow=2)
mat

v <- c(3, 4, 8, 9, 11, 15, 18, 33)
mat <- matrix(v, nrow = 2, ncol = 3)
mat


v <- rep(c(3, 4, 5), 2)
mat <- matrix(v, nrow = 3)
mat

summary(mat)


v <- seq(-1, 1.5, 0.5)
mat <- matrix(v, ncol = 3)
mat

dim(mat)

length(mat)

min(mat)

max(mat)

mean(mat)

sd(mat)



# Material 6 - Slide 31

v <- 1:9

mat <- matrix(v, ncol=3)
mat

u <- c(18, 20, 35)


mais.linha <- rbind(mat, u)
mais.linha

mais.coluna <- cbind(mat, u)
mais.coluna


# Material 6 - Slide 32

v <- 1:12

mat <- matrix(v, ncol=3)
mat


mat[c(2, 3), c(1, 2)]

mat[2, 3]

mat[2,]

mat[,3]

mat[c(1, 2),]

mat[, c(1, 3)]


# Material 6 - Slide 33

mat < 5 

mat[,2] > 3

mat[1,3] <= 4

mat[1,] >= 3

mat == 1


# Material 6 - Slide 36

(mat > 2) & (mat < 4)

(mat[, 2] <= 6) | (mat[, 2] == 9)

(mat[, 3] <= 11) & (mat[, 3] > 9)


# Material 6 - Slide 37

mat1 <- matrix(c(1,1,1,0,3,2,0,1,0), ncol = 3)
mat1

mat1_transposta <- t(mat1)
mat1_transposta

mat1_inversa <- solve(mat1)
mat1_inversa

mat1/2


mat2 <- matrix(1:9, nrow = 3)
mat2

# %*% produto de matrizes
mat1 %*% mat2



# Material 6 - Slide 38

# Exercício 2
# Crie um objeto da classe matriz chamado matriz.normal com 3 linhas e 5
# colunas contendo uma amostra de uma distribuição normal de média 10 e
# desvio padrão 1,5. A seguir:
#   • apresente a linha 2 e, a seguir, a coluna 3 da matriz.
#   • apresente as dimensões da matriz.
#   • calcule a soma dos elementos da matriz.
#   • calcule a soma dos elementos da primeira linha da matriz.
#   • calcule o produto da matriz por sua matriz transposta.
#   • calcule a inversa da matriz resultante do item anterior.

v <- rnorm(15, mean = 10, sd = 1.5)

matriz.normal <- matrix(v, ncol=5, nrow=3)
matriz.normal

matriz.normal[2,]
matriz.normal[,3]

dim(matriz.normal)

sum(matriz.normal)

sum(matriz.normal[1,])

matriz.normal.transposta <- t(matriz.normal)

matriz.produto = matriz.normal %*% matriz.normal.transposta

matriz.produto.inversa <- solve(matriz.produto)
matriz.produto.inversa


rm(list=ls())
# Material 6 - Slide 42

acao <- c("RADL3", "HYPE3", "USIM5", "BRAP4", "VALE3")
quantidade <- c(100, 20, 35, 40, 90)
valor <- c(77.28, 27.71, 6.98, 32.03, 54.97)

investimento <- data.frame(acao, quantidade, valor)
investimento

investimento[,1]

investimento[2,]

investimento[2, 3]

investimento[2, c("acao", "quantidade")]

investimento[2, 3] <- 15.0
investimento


investimento$quantidade

investimento['quantidade']

investimento[['valor']]

investimento[, 'valor', drop=FALSE]

# adicionando linhas
investimento <- rbind(investimento, data.frame(acao = "ITUB4", quantidade = 55, valor = 42.09))
investimento

# removendo linhas
investimento <- investimento[c(-2, -4), ]
investimento 

investimento <- investimento[valor > 7, ]
investimento


investimento <- data.frame(acao, quantidade, valor)
investimento

# adicionando colunas
investimento <- cbind(investimento, variacao = c(0.2, -0.3, 0.5, -0.8, 0.1))
investimento

investimento$variacao <- c(0.2, -0.3, 0.5, -0.8, 0.1)
investimento

# removendo colunas
investimento$valor <- NULL
investimento

investimento <- investimento[, -3]
investimento



investimento <- data.frame(acao, quantidade, valor)
investimento

str(investimento)

names(investimento)

sapply(investimento["quantidade"], min)

sapply(investimento[3], max)

sapply(investimento[2:3], mean)



# Material 6 - Slide 55

acao <- c("ITUB4", "PTRE2")
quantidade <- c(10, 65)
valor <- c(22.28, 10.71)

novo <- data.frame(acao, quantidade, valor)
novo

investimento

investimento.final <- merge(investimento, novo, all = TRUE)
investimento.final



codigo <- c("GFX6","ELT6","GLO5","KLM1")
compra <- c(1.01, 0.30, 1.26, 1.82)

acao.compra <- data.frame(codigo, compra)
acao.compra


identificador <- c("ELT6","GLO5","GFX6","KLM1")
venda <- c (0.98, 0.78, 1.23, 1.95)

acao.venda <- data.frame(identificador, venda)
acao.venda

acao <- merge(acao.compra, acao.venda, by.x = "codigo", by.y = "identificador")
acao


# Slice de dataframe

investimento[investimento$quantidade >= 70, ]


library(dplyr)

filter(investimento, quantidade >= 70)

filter(investimento, (quantidade >= 70) & (valor < 60))


# Ordenação de dataframe

investimento[order(investimento$quantidade), ]
investimento[order(investimento$quantidade, decreasing = TRUE), ]

# arrange é uma função da library dplyr
arrange(investimento, quantidade)
arrange(investimento, -quantidade)



select(investimento, acao, quantidade)

select(investimento, acao:valor)

select(investimento, - quantidade)



mutate(investimento, investido = quantidade * valor)

investimento$investido <- investimento$quantidade * investimento$valor

investimento


investimento <- mutate(investimento, a.investir = quantidade * valor,
                       investir = ifelse(quantidade < 50, "Sim", "Não"))

investimento


rm(list=ls())
# Material 6 - Slide 62

# Exercício 3
# Uma empresa possui duas filiais cujos gastos ao longo dos seis primeiros
# meses do ano com pessoal e com aluguel estão armazenados em dois
# arquivos: filial01.csv e filial02.txt. Para os dados das filiais:
#   • Crie um data frame (filial01 e filial02) para cada uma das filiais contendo as informações
#   de mês, pessoal e aluguel.
#   • Para cada uma das filiais imprima na tela o menor e o maior valor gasto com pessoal.
#   • Para cada uma das filiais imprima na tela a média de gastos com aluguel.

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

# install.packages("descr")

library("descr")

file.head("Aulas/Filial/filial01.CSV")
file.head("Aulas/Filial/filial02.TXT")

filial01 <- read.csv2("Aulas/Filial/filial01.CSV",
                      dec=".",
                      fileEncoding = "UTF-8-BOM")
View(filial01)


filial02 <- read.fwf("Aulas/Filial/filial02.TXT", 
                     col.names = c("mes", "pessoal", "aluguel"),
                     widths = c(3, 5, 6),
                     colClasses = c("character", "numeric", "numeric"),
                     fileEncoding = "UTF-8-BOM")

filial02$aluguel <- filial02$aluguel / 100
View(filial02)



sapply(filial01["pessoal"], min)
sapply(filial01['pessoal'], max)

min(filial01$pessoal)
max(filial01$pessoal)

sapply(filial02["pessoal"], min)
sapply(filial02['pessoal'], max)

min(filial02$pessoal)
max(filial02$pessoal)



sapply(filial01['aluguel'], mean)

mean(filial01$aluguel)

sapply(filial02['aluguel'], mean)

mean(filial02$aluguel)



# Material 6 - Slide 67

# Exercício 4
# Para a empresa do exercício anterior:
#   • Crie uma nova coluna chamada filial em cada um dos dois data frames e atribua para a
#   nova coluna filial o valor “01” para todos os registros do data frame filial01 e o valor
#   “02” para todos os registros do data frame filial02. A seguir, crie um data frame
#   chamado empresa unindo os registros dos data frames filial01 e filial02.
#   • Aumente em 10% o valor dos aluguéis.
#   • Crie no data frame empresa uma nova coluna chamada desvio e atribua o valor 40000 -
#     (pessoal + aluguel), caso a filial seja “01” e o valor 15000 - (pessoal + aluguel), caso a
#   filial seja “02”.
#   • Imprima na tela a soma dos valores da coluna desvio.

filial01$filial <- '01'
View(filial01)

filial02$filial <- '02'
View(filial02)


# empresa <- merge(filial01, filial02, by.x = "mes", by.y = "mes")

empresa <- merge(filial01, filial02, all = TRUE)
View(empresa)



empresa$aluguel <- empresa$aluguel*1.1
empresa

empresa$filial[2]

set <- 1:dim(empresa)[1]

set

for (i in set) {
  if (empresa$filial[i] == '01') {
    empresa$desvio[i] <- 40000 - (empresa$pessoal[i] + empresa$aluguel[i])
  } else if (empresa$filial[i] == '02') {
    empresa$desvio[i] <- 15000 - (empresa$pessoal[i] + empresa$aluguel[i])
  }
}

View(empresa)


# empresa <- mutate(empresa,
#                   desvio = ifelse(filial == "01", 40000 - (pessoal + aluguel),
#                                   15000 - (pessoal + aluguel)))
empresa



# sapply(empresa['desvio'], sum)

sum(empresa$desvio)





rm(list=ls())

# Material 6 - Slide 72

lancamento <- list(
  mes = "Jan",
  valores = list(
    pessoal = 3340.00,
    aluguel = 256.00
  ),
  filial = "01"
)

lancamento

lancamento$mes

lancamento$valores

lancamento$valores$pessoal

lancamento$valores$aluguel

lancamento$filial



dados.array <- array(1:6, c(3, 2))

dados.array[1,]

dados.array[,1]

dados.array[3,2]

dados.array[1,][2]

dados.array[3,2][1]



dados.array <- array(1:24, c(3, 4, 2))
dados.array

dados.array[1,,]

dados.array[,1,]

dados.array[,,1]

dados.array[2,3,1]






rm(list=ls())
# Material Entrada e Saída de Dados

data()

setwd("D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados")

getwd()

library("descr")

file.head("Aulas/INF1514_Entrada_Saida_de_arquivos/PIB2.CSV")

indicador <- read.csv2("Aulas/INF1514_Entrada_Saida_de_arquivos/PIB2.CSV",
                       header=TRUE,
                       sep=';',
                       quote='"',
                       dec=',',
                       fileEncoding = 'UTF-8-BOM')

indicador

class(indicador)

summary(indicador)

head(indicador)

tail(indicador)

glimpse(indicador)



file.head('Aulas/INF1514_Entrada_Saida_de_arquivos/PIB3.TXT')

indicador <- read.fwf('Aulas/INF1514_Entrada_Saida_de_arquivos/PIB3.TXT',
                      col.names = c("estado", "descricao", "populacao", "pib"),
                      widths = c(2, 19, 8, 7),
                      colClasses = c("character", "character", rep("numeric", 2)),
                      fileEncoding = 'UTF-8-BOM')

indicador



# install.packages("RJSONIO")
library(RJSONIO)

# install.packages("rjson")
library(rjson)

setwd("D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados")
getwd()


lista <- jsonlite::fromJSON("Aulas/INF1514_Entrada_Saida_de_arquivos/estados.json")
lista

lista$estados

lista$estados[1,]

lista$estados[1,][['sigla']]


carteira <- jsonlite::fromJSON("Aulas/INF1514_Entrada_Saida_de_arquivos/carteira.json")
carteira

carteira$investidor

carteira$acao

carteira$acao$sigla[1]

carteira$carteira


