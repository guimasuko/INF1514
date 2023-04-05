rm(list=ls()) # apagar tudo




# Variáveis são elementos que guardam algum conteúdo
x = 1 # a variável 'x' guarda o valor 1
X = 2


x + X

y = 'Bom dia' # a variável 'y' guarda o texto 'Bom dia'

x + y

z = '1' # Por mais que '1' é um número, por estar entre aspas sua classe é character

w = FALSE


class(x)
class(z)
class(w)

x + z




rm(x) # apaga uma variável específica

x

rm(list=ls()) # apaga todas variáveis












# vetores

frutas <- c('Maçã', 'Banana', 'Abacaxi', 'Uva')

numeros <- c(22, 14, 3, 8, 51, 36, 72, 81, 19, 10)

logico <- c(TRUE, FALSE, TRUE, FALSE)

a <- c('Maçã', 22, TRUE)
a

numeros_mais_1 = numeros + 1

numeros_mais_1

numeros <- c(1:10)

numeros <- seq(from = 1, to = 10, by = 1)

help(seq) # https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/seq

numeros <- seq(1, 10, 1)



# slice de vetores

numeros[1]
numeros[3:4]
numeros[1:10]


numeros[numeros < 4]
numeros[numeros <= 4]












rm(list=ls())

# matrizes

help(matrix)

frutas <- matrix(data = c('Maçã', 'Banana', 'Abacaxi', 'Uva'),
                 nrow = 2,
                 ncol = 2,
                 byrow = FALSE)

View(frutas)

class(frutas)


frutas1 <- matrix(data = c('Maçã', 'Banana', 'Abacaxi', 'Uva', 'Morango'),
                 nrow = 2,
                 ncol = 2,
                 byrow = TRUE)

numeros <- matrix(data = c(22, 14, 3, 8, 51, 36, 72, 81, 19),
                  nrow = 3,
                  ncol = 3)


logico <- matrix(c(TRUE, FALSE, TRUE, FALSE),
                 2,
                 2)



# slice de matrizes

View(numeros)

numeros[1,1]
numeros[2,1]
numeros[1,2]

numeros[1,1:2]
numeros[1,]

numeros[numeros > 25]


# juntando matrizes

matriz1 = matrix(c(1:4),
                 2,
                 2)

matriz2 = matrix(c(5:8),
                 2,
                 2)


por_linha <- rbind(matriz1, matriz2)

por_linha

por_coluna <- cbind(matriz1, matriz2)

por_coluna











rm(list=ls())

# dataframes

mercado <- data.frame(produto = c('Arroz', 'Feijão', 'Cerveja'),
                      preco = c(25.39, 13.99, 6.49),
                      quantidade = c(2, 3, 12))


# acessando informações dentro de um dataframe

mercado$produto

mercado$preco

mercado$quantidade


# Qual o preço do arroz?

mercado$preco[mercado$produto == 'Arroz']

mercado[1,2]

# criando uma coluna nova

mercado$custo_total <- mercado$preco * mercado$quantidade

View(mercado)

sum(mercado$custo_total)
















# listas

lista <- list(c(1:10),
              matrix(c(1:9), nrow = 3),
              data.frame(fruta = c('Maçã', 'Banana', 'Abacaxi', 'Uva', 'Morango'),
                         preco = c(2.75, 4.32, 6.38, 7.25, 8.30),
                         quantidade = c(2, 4, 8, 1, 9)))


# slice de listas

lista[[1]]
lista[[2]]
lista[[3]]

lista[[1]][1:4]
lista[[2]][1,3]
lista[[3]]$fruta[2]










# Aula 1 - Slide 12
Print('Bom dia!') # vai dar erro porque a função verdadeira é "print()" (tudo em caixa baixa)

print("Bom dia!") 
print('Bom dia!') # "" e '' são equivalentes















# Aula 2 - Slide 10

# peso agora é uma variável que guarda o valor 80
peso = 80  

# altura agora é uma variável que guarda o valor 1.60
altura = 1.60   

# imc é uma variável que guarda o valor resultante de uma operação com as
# variáveis peso e altura
imc = (peso / ( altura^2 ))  
print(imc)





# Aula 2 - Slide 22 - Exemplo
rm(list=ls())

# Para comentar multiplas linhas pode-se usar o comando rápido Ctrl+Shift+C

# Suponha que em uma determinada loja o preço final que um cliente irá pagar
# por um produto seja definido com base no preço do produto e no seguinte
# conjunto de regras:

# • Se o pagamento for à vista (parcela única), o cliente terá 10% de desconto.
# • À prazo em duas vezes iguais sendo uma parcela para 30 e outra para 60 dias, sofrerá
# acréscimo de 5%.
# • À prazo em três vezes iguais sendo uma parcela para 30, outra para 60 e uma terceira
# para 90 dias sofrerá acréscimo de 10%.


# declarando as variáveis que serão utilizadas no processo
preco_do_produto = 1000
n_parcelas = 3


if(n_parcelas == 1) {
  preco_final = preco_do_produto*0.9
  print(preco_final)
} else if(n_parcelas == 2) {
  preco_final = preco_do_produto*1.05
  print(preco_final)
} else if(n_parcelas == 3) {
  preco_final = preco_do_produto*1.1
  print(preco_final)
}

# E se colocarmos um número de parcelas diferente de 1,2,3?
# O programa não nos devolve nada, pois não lidamos com número de parcelas diferente de 1,2,3.


if(n_parcelas == 1) {
  preco_final = preco_do_produto*0.9
  print(preco_final)
} else if(n_parcelas == 2) {
  preco_final = preco_do_produto*1.05
  print(preco_final)
} else if(n_parcelas == 3) {
  preco_final = preco_do_produto*1.1
  print(preco_final)
} else {
  print("Essa loja não autoriza qualquer número de parcelas diferente de 1,2,3. Desculpe.")
}

# Podemos melhorar esse código, deixá-lo mais legal :)

# perceba que '=' e '<-' são equivalentes

# a função readline(prompt="") funciona como um pedido de input
# as.integer() converte o parâmetro para inteiro

preco_do_produto <- as.numeric(readline(prompt="Digite o preço do produto: "))
n_parcelas <- as.integer(readline(prompt="Digite o número de parcelas: "))


if(n_parcelas == 1) {
  preco_final = preco_do_produto*0.9
  print(preco_final)
} else if(n_parcelas == 2) {
  preco_final = preco_do_produto*1.05
  print(preco_final)
} else if(n_parcelas == 3) {
  preco_final = preco_do_produto*1.1
  print(preco_final)
} else {
  print("Essa loja não autoriza qualquer número de parcelas diferente de 1,2,3. Desculpe.")
}

# E se quisermos atribuir mais de um valor para cada variável preco_do_produto e n_parcelas?
# podemos usar um ciclo
preco_do_produto = c(1500, 1000, 800)

# como funciona a função scan()?
# a função rebebe vários valores, isso é, após rodar o código, aparecerá no Console
# '1:', então você deve atribuir um valor e dar enter, depois aparecerá '2:' e você
# deve atribuir um novo valor, e assim por diante. Após terminar de colocar todos valores
# apenas aperte a tecla enter sem atribuir qualquer valor
preco_do_produto <- scan()
n_parcelas <- scan()

for (preco in preco_do_produto) {
  if(n_parcelas == 1) {
    preco_final = preco*0.9
    print(preco_final)
  } else if(n_parcelas == 2) {
    preco_final = preco*1.05
    print(preco_final)
  } else if(n_parcelas == 3) {
    preco_final = preco*1.1
    print(preco_final)
  } else {
    print("Essa loja não autoriza qualquer número de parcelas diferente de 1,2,3. Desculpe.")
  }
}

# aqui fizemos um loop apenas para preco_do_produto, dessa forma obtemos os preco_final
# para apenas a primeira entrada de n_parcelas que é 1.


for (preco in preco_do_produto) {
  for (parcela in n_parcelas) {
    if(parcela == 1) {
      preco_final = preco*0.9
    } else if(parcela == 2) {
      preco_final = preco*1.05
    } else if(parcela == 3) {
      preco_final = preco*1.1
    } else {
      print("Essa loja não autoriza qualquer número de parcelas diferente de 1,2,3. Desculpe.")
    }
    cat("O preço final do produto será ",preco_final,"se o preço do produto for",
        preco,"e o número de parcelas for ",parcela,".\n")
  }
}

# Mais um nível que podemos evoluir, podemos criar uma função que fique guardada para
# nos retornar esse resultado

# Aula 4 - Slide 14 - Exercício 1


calcula_preco_final <- function(preco_do_produto, n_parcelas) {
  if(n_parcelas == 1) {
    preco_final = preco_do_produto*0.9
  } else if(n_parcelas == 2) {
    preco_final = preco_do_produto*1.05
  } else if(n_parcelas == 3) {
    preco_final = preco_do_produto*1.1
  } else {
    print("Essa loja não autoriza qualquer número de parcelas diferente de 1,2,3. Desculpe.")
  }
  return(paste("O preço final do produto será ",preco_final,"se o preço do produto for",
             preco_do_produto,"e o número de parcelas for ",n_parcelas,"."))
}

# Podemos calcular o preço final de algo cujo preço do produto é 1500 e o número 
# parcelas é 3.

calcula_preco_final(1500, 3)


# Podemos atribuir os valores a variáveis e passar essas variáveis como parâmetros
# da função criada.
preco_bicicleta <- 2000
parcelas <- 3

calcula_preco_final(preco_bicicleta, parcelas)














# Aula 2 - Slide 31 - Exercício
rm(list=ls())

numerador <- 5
denominador <- 2
  
print(numerador/denominador)

numerador <- 5
denominador <- 'oi'

print(numerador/denominador)

if (
  (class(numerador) == "numeric") & (class(denominador) == "numeric")
  ) {
  print(numerador/denominador)
} else {
  print("Apenas valores numéricos são aceitos!")
}

numerador <- 5
denominador <- 0

if (
  (class(numerador) == "numeric") & (class(denominador) == "numeric")
) {
  print(numerador/denominador)
} else {
  print("Apenas valores numéricos são aceitos!")
}



if (
  ((class(numerador) == "numeric") & (class(denominador) == "numeric")) & (denominador != 0)
) {
  print(numerador/denominador)
} else if(denominador == 0) {
  print("Divisões com 0 no denominador causam indeterminação!")
} else {
  print("Apenas valores numéricos são aceitos!")
}


# Podemos definir uma função 

calcula_divisao <- function(numerador, denominador) {
  if(
    (class(numerador) != "numeric") | (class(denominador) != "numeric")
  ) {
    print("Apenas valores numéricos são aceitos!")
    } else if(
      denominador == 0
    ) {
      print("Divisões com 0 no denominador causam indeterminação!")
    } else {
      print(numerador/denominador)
    }
}

calcula_divisao(5, 2)














# Case sensitive
A = 1

a = 2

A == a

A + a


rm(list=ls())


# Constantes armazenadas no R
pi

letters

LETTERS

month.abb

month.name


# Tipos de dados em R
class("aula")

class(1.2)

class(3)

class(TRUE)

class(FALSE)


A = matrix(1:9, nrow = 3, ncol = 3)
A

class(A)

class(NA)














# Aula 3 - Slide 24 - Exercício 1
rm(list=ls())

x <- (2 - 3) * 2
y <- 1 + 3^2
z <- y - x

x
y
z

abs(x)

sqrt(y)

(x <= y)

(x > y) & (x < z)

!(x >= z)

(x > y) | (x < z)

(x < y) & (x < z)

((x > y) & (y > z)) | ((x + y) > z)

rm(list=ls())










# Aula 4 - Slide 7 - Exemplo 1

# • Sabe-se que, em um determinado período, o salário mínimo aumentou de
# R$1.212,00 para R$1.302,00. Considerando que a inflação desse mesmo
# período foi de 5,8%, qual o aumento real do salário mínimo?


salario_anterior <- 1212.0
novo_salario <- 1302.0
taxa_inflacao <- 0.058 # 5,8%
taxa_nominal <- novo_salario/salario_anterior - 1
taxa_real <- (1 + taxa_nominal)/(1 + taxa_inflacao) - 1
print(taxa_real)





# Aula 4 - Slide 9 - Exemplo 2
# 
# • Elabore uma função chamada calculaTaxaRealSalario que calcula a taxa real
# de juros da variação do valor do salário mínimo dados como parâmetros: o
# valor do salário mínimo anterior, o valor do novo salário mínimo e a taxa de
# inflação no período. Teste a função elaborada usando os dados do Exemplo 1.



calculaTaxaRealSalario <- function(salario_anterior, novo_salario, taxa_inflacao) {
  taxa_nominal <- novo_salario/salario_anterior - 1
  taxa_real <- (1 + taxa_nominal)/(1 + taxa_inflacao) - 1
  return(print(taxa_real))
}


calculaTaxaRealSalario(1212.0, 1302.0, 0.058)











# Aula 4 - Slide 19 - Exercício 2


# • A tabela abaixo apresenta o critério de classificação de empresas utilizado por
# um analista. Escreva uma função que retorna a classificação da empresa em
# função da dívida e do faturamento anual médio passados como parâmetros.


classificaEmpresa = function(divida, faturamento) {
  classificacao <- ""
  if (divida > 8.9){
    classificacao <- "F"
  }
  else if (divida >= 8.0){
    classificacao <- "E"
  }
  else if ((divida >= 7.0) & (faturamento <= 2.0)){
    classificacao <- "E"
  }
  else if (divida >= 7.0){
    classificacao <- "D"
  }
  else if ((divida >= 6.0) & (faturamento <= 1.0)){
    classificacao <- "D"
  }
  else if (divida >= 6.0){
    classificacao <- "C"
  }
  else if (divida >= 5.0){
    classificacao <- "B"
  }
  else {
    classificacao <- "A"
  }
  return(classificacao)
}


classificaEmpresa(9, 2)
classificaEmpresa(8.5, 4)
classificaEmpresa(7.6, 1)
classificaEmpresa(7.4, 4)
classificaEmpresa(6.4, 0.5)
classificaEmpresa(6.4, 2)
classificaEmpresa(5.3, 0)
classificaEmpresa(4, 2)
classificaEmpresa(0, 0)
















raizes_funcao_2grau <- function(a, b, c) {
  # primeiro definimos o valor de delta
  delta <- b^2 - 4*a*c
  # existem 3 casos para delta
  if (delta < 0) {
    return(print("Essa função não tem raízes reais."))
  } else if (delta == 0) {
    x1 = (- b / ( 2*a ))
    return(paste("Essa função tem apenas uma raíz, seu valor é",x1))
  } else {
    x1 = ( (-b + sqrt(delta) ) / ( 2*a ))
    x2 = ( (-b - sqrt(delta) ) / ( 2*a ))
    return(paste("Essa função tem duas raízes reais. Seus valores são",x1,"e",x2))
  }
}


# f(x) = x^2 

raizes_funcao_2grau(1,0,0)

# f(x) = 2x^2 - 18

raizes_funcao_2grau(a=2, b=0, c=-18)

# f(x) = x^2 - 4x + 10

raizes_funcao_2grau(a=1, b=-4, c=10)

# f(x) = -2x^2 + 20x - 50

raizes_funcao_2grau(a=-2, b=20, c=-50)









grafico_funcao_2grau <- function(a,b,c) {
  x <- seq(-10, 10, 0.5)
  y <- rep(0, length(x))
  index <- 0
  for (valor_x in x) {
    index <- index + 1
    y[index] <- a*valor_x^2 + b*valor_x + c
  }
  plot(x, y)
}


# f(x) = x^2
grafico_funcao_2grau(1, 0, 0)

# f(x) = 2x^2 - 18
grafico_funcao_2grau(a=2, b=0, c=-18)

# f(x) = x^2 - 4x + 10
grafico_funcao_2grau(a=1, b=-4, c=10)

# f(x) = -2x^2 + 20x - 50
grafico_funcao_2grau(a=-2, b=20, c=-50)














numero_primo <- function(numero) {
  e_primo <- TRUE
  if (numero == 1) {
    return(paste(numero,"não é um número primo."))
  } else if (numero == 2) {
    return(paste(numero,"é um número primo."))
  } else {
    seq <- 2:(numero-1)
    for (i in seq) {
      if ((numero %% i) == 0) {
        e_primo <- FALSE
        decomp_1 <- i
        decomp_2 <- (numero/i)
        break
      }
    }
    if (e_primo == TRUE) {
      return(paste(numero,"é um número primo."))
    } else {
      return(paste(numero,"não é um número primo porque",decomp_1,"x",decomp_2,"=",numero,"."))
    }
  }
}


# valores de 2 à 20
numero_primo(1)
numero_primo(2)
numero_primo(3)
numero_primo(4)
numero_primo(5)
numero_primo(6)
numero_primo(7)
numero_primo(8)
numero_primo(9)
numero_primo(10)
numero_primo(11)
numero_primo(12)
numero_primo(13)
numero_primo(14)
numero_primo(15)
numero_primo(16)
numero_primo(17)
numero_primo(18)
numero_primo(19)
numero_primo(20)

# 577
numero_primo(577)

# 753
numero_primo(753)

# 997
numero_primo(997)
