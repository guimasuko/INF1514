# Gabarito oficial disponível na página da disciplina. 
# Resolução feita durante a monitoria com os alunos.

rm(list=ls())


# Lista Complementar

# Q1

# a)

v <- seq(1, 49, 2)
v

# b)
sum(v)

# c)

v 

v %% 3

condicional <- (v %% 3) == 0

v.selecionado <- v[condicional]

v.selecionado

# d)

v.dividido <- v / 3
v.dividido



rm(list=ls())
# Q2

# a)

help(seq)

sq1 <- seq(from = 0, to = 100, length = 20)
sq1


# b)

sq2 <- sq1[c(-5,-15)]
sq2


# c)

vetor_impar_ate20 <- seq(1, 19, 2)

sq3 <- sq1[vetor_impar_ate20]
sq3


# d)

vetor_par_ate20 <- seq(2, 20, 2)

sq4 <- sq1

sq4[vetor_par_ate20] <- vetor_par_ate20

sq4


# e)

help(matrix)

m <- matrix(sq1, 3, 3)
m


# f)

m / 2


rm(list=ls())
# Q3

u = c(-1, 3, -8, 9, 10)
v = c(-8, 12, 4, 2, 3)
w = c(-2, -5, 3, 6, 7)
x = c(1, 5, 9, 12, 6)
y = c(2, 6, 10, -3, 8)
z = c(3, 7, 11, -10, 2)


m <- matrix(c(u, v, w, x, y, z), nrow = 6, ncol = 5, byrow = TRUE)
m


# a)

mean(x + y - u)


# b)

maior.igual <- (x + y + z) >= 3
maior.igual


# c)

print(m)


# d)

m[3,2]


# e)

m[ ,2]


# f)

matriz.selecionada <- m[c(1,3), ]
matriz.selecionada


# Q4

converte.temperatura <- function (temperatura, escala) {
  nova_temperatura <- NaN
  
  if (toupper(escala) == 'C') {
    nova_temperatura <- ( ( 9 * temperatura ) / 5 ) + 32
  } else if (toupper(escala) == 'F') {
    nova_temperatura <- ( ( temperatura - 32 ) * 5 ) / 9
  } 
  
  return(nova_temperatura)
}

# testes 

converte.temperatura(escala = 'C', temperatura = 23)

converte.temperatura(73.4, escala = 'F')

converte.temperatura(57, 'Z')








rm(list=ls())
# Q5

conta.primos <- function (inicio, fim) {
  # primeiro passo é verificar a sequência que será resultado desses inputs
  # sabemos que inicio é um valor menor que o fim
  # se o fim for menor que 1, não há primos
  # se o início for menor ou igual à 1, a análise de primos se dá após o número 2 (primeiro primo)
  # se o início for maior que 1, a análise de primos se dá a partir do primeiro elemento
  if (fim <= 1) {
    seq <- NULL
  } else if (inicio <= 1) {
    seq <- 2:fim
  } else {
    seq <- inicio:fim
  }
  # agora temos a sequência de elementos que serão analisados
  
  # criamos um vetor (nulo à princípio) para preenchermos de números primos
  primos <- c()
  
  # vamos para a análise de primos
  # para cada elemento do vetor seq, o testamos se é primo ou não
  for (i in seq) {
    # deixaremos que o elemento à princípio seja primo
    e_primo <- TRUE
    
    # caso o elemento seja 2, esse elemento é primo
    # esse caso não passaria no LOOP DE TESTE, pois começa-se testando pela divisão do 2
    if (i == 2) {
      e_primo <- TRUE
    } else {
      # LOOP DE TESTE: testa se o número se é primo ou não
      for (j in 2:(i-1)) {
        
        # caso o elemento i (elemento a ser testado) seja divisível (tenha resto 0) por qualquer número
        # de 2 até um número antes dele, então o número não é primo
        if ((i %% j) == 0) {
          e_primo <- FALSE
        }
      }
    }
    
    # se caso o número passar pelo LOOP DE TESTE sem que a variável e_primo receba FALSE,
    # então é um primo
    if (e_primo == TRUE) {
      
      # a função append adiciona o elemento i ao vetor primos.
      primos <- append(primos, i)
    }
  }
  
  # o vetor primos contém os primos dentro do intervalo, a quantidade de primos se dá
  # pelo tamanho do vetor
  quantidade_de_primos <- length(primos)
  
  # estamos retornando a quantidade de números primos e os respectivos números primos
  return(c(quantidade_de_primos, primos))
}



# testes
conta.primos(-10, -1)
conta.primos(-19, 10)
conta.primos(-2, 20)
conta.primos(2, 30)
conta.primos(5, 10)
conta.primos(6, 50)




rm(lista=ls())
# Q6

calcula.soma <- function (m) {
  condicao <- m > 5
  
  m_maior5 <- m[condicao]
  
  soma <- sum(m_maior5)
  
  return(soma)
}

calcula.soma(m)







rm(list=ls())
# Q7

# a)

help(rnorm)

dados <- rnorm(n = (30*50), mean = 10, sd = 3.6)

matriz.normal <- matrix(dados, nrow = 30, ncol = 50)
View(matriz.normal)


# b)

matriz.normal[2, ]

matriz.normal[ ,3]


# c)

matriz.selecionada <- matriz.normal[c(3,4,5), c(8,9,10)]
matriz.selecionada


# d)

dim(matriz.normal)


# e)

sum(matriz.normal)


# f)

matriz.normal.transposta <- t(matriz.normal)

matriz.normal %*% matriz.normal.transposta


# g)

sum(matriz.normal[1,])


# h)

help(data.frame)

# criando dataframe com valores nulos
dataframe.linha <- data.frame(
  media = rep(0, nrow(matriz.normal)),
  variancia = rep(0, nrow(matriz.normal))
)



# preenchendo o dataframe
for (row in 1:nrow(matriz.normal)) {
  mean <- mean(matriz.normal[row, ])
  var <- var(matriz.normal[row, ])
  
  dataframe.linha[row, 1] <- mean
  # dataframe.linha$media[row] <- mean
  dataframe.linha[row, 2] <- var
  # dataframe.linha$variancia[row] <- var
}

View(dataframe.linha)








rm(list=ls())
# Q8

help(array)
# a)

arraytridimensional <- array(1:60, dim = c(4,5,3))
arraytridimensional


# b)

sum(arraytridimensional[ , 4, ])


# c)

mean(arraytridimensional[1, 1, ])


# d)

( arraytridimensional*2 ) +5







rm(list=ls())
# Q9

gera.fibonacci <- function (n) {
  fib <- c(0,1)
  
  if (n == 1) {
    fib <- fib[1]
  } else if (n >= 3) {
    for (i in 3:n) {
      fib[i] <- fib[i-1] + fib[i-2]
  }
  }
  return(fib)
}

# teste
gera.fibonacci(3)










rm(list=ls())
# Q10


apresenta.palavra <- function (vetor.caracteres, vetor.numerico) {
  palavra <- ''
  
  for (i in 1:length(vetor.numerico)) {
    print(vetor.caracteres[vetor.numerico[i]])
  }
}

vetor.caracteres <- c("A","B", "C", "D", "E", "F", "G", "H", "I", "J",
                      "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
                      "Y", "Z")
vetor.numerico <- c(16, 21, 3, 18, 9, 15)

print(apresenta.palavra (vetor.caracteres, vetor.numerico))












rm(list=ls())
# Q11

transforma.vetor <- function (vetor, n, m) {
  v <- rep(0, length = (n*m))
  matriz <- matrix(v, nrow = n, ncol = m)
  
  contador <- 0
  for (i in 1:n) {
    for (j in 1:m) {
      contador <- contador + 1
      matriz[i, j] <- vetor[contador]
    }
  }
  
  return(matriz)
}


numero.linha <- 3
numero.coluna <- 4
vetor <- seq(1:(numero.linha*numero.coluna))

vetor

transforma.vetor(vetor, numero.linha, numero.coluna)









rm(list=ls())
# Q12

encontra.valor <- function (x, y) {
  # criando um vetor nulo para preencher com os valores que estão em ambos vetores x e y.
  valor_igual <- c()
  
  # indexador while de x
  i <- 0
  while (i < length(x)){
    # aumenta-se à unidade a cada iteração
    i <- i + 1
    # indexador while de y
    j <- 0
    while (j < length(y)) {
      # aumenta-se à unidade a cada iteração
      j <- j + 1
      
      # condição para valor entrar no vetor:
      # se o elemento encontra-se em ambos vetores, x e y, é selecionado
      # se um mesmo elemento encontra-se em x mais de uma vez, é selecionado todas vezes
      # se um mesmo elemento encontra-se em y mais de uma vez, é selecionado um única vez
      if (x[i] == y[j]) {
        valor_igual <- append(valor_igual, x[i])
        # uma vez que o elemento em x é encontrado em y, o loop para para não selecionar
        # mais de uma vez o mesmo elemento em y.
        break
      } 
    }
  }
  
  quantidade_valor_igual <- length(valor_igual)
  
  # estamos retornando a quantidade de valores e os respectivos valores
  return(c(quantidade_valor_igual, valor_igual))
}

# teste
x_test <- c(1, 30, 5, 1, 500)
y_test <- c (0, 1, 2, 5, 3, 4, 5, 6, 7, 8, 9, 5)


encontra.valor(x_test, y_test)













rm(list=ls())
# Q13

calcula.soma <- function (matriz) {
  condicao <- matriz > 5
  
  vetor <- matriz[condicao]
  
  soma <- sum(vetor)
  
  return(soma)
}


# teste
m <- matrix (1:12, ncol = 4, nrow = 3)
calcula.soma (m)













rm(list=ls())
# Q14

calcula.transposta <- function (m) {
  
  matriz_transposta <- matrix(rep(0, (nrow(m)*ncol(m))), nrow = ncol(m), ncol = nrow(m))
  
  for (i in 1:nrow(m)) {
    
    for (j in 1:ncol(m)) {
      
      matriz_transposta[j, i] <- m[i, j]
    }
  }
  
  return(matriz_transposta)
}

v <- 1:9
matriz <- matrix(v, ncol = 3)
matriz


calcula.transposta(matriz)












rm(list=ls())
# Q15

calcula.valor <- function (m) {
  condicional <- (m > 3) & (m < 6)
  
  m_ <- m[condicional]
  
  soma <- sum(m_)
  
  quadrado_soma <- soma^2
  
  return(quadrado_soma)
}


# teste
matriz <- matrix (1:12, ncol = 4)
calcula.valor(matriz)




rm(list=ls())
# Q16

# a)

Moto <- c("Harley Iron", "Honda Titan", "Ninja MT")
P2010 <- c(36000.00, 12000.00, 22000.00)
Q2010 <- c(5, 10, 15)
P2018 <- c(45000.00, 13000.00, 24000.00)
Q2018 <- c(4, 15, 12)

loja <- data.frame(Moto, P2010, Q2010, P2018, Q2018)

View(loja)


# b)

str(loja)

names(loja)


# c)

min(loja$P2010)


# d)

loja_ <- loja[loja$Q2010 > 5, ]
loja_[ , c('P2018', 'Q2018')]


# e)

loja$TotalVenda <- loja$Q2010 + loja$Q2018

loja


