rm(list=ls())

# declarando variáveis

# variável que guardará o valor do produtório
x <- 1
# variável que guardará o número de termos
count <- 0

# loop
while (x <= 1000000) {
  count <- count + 1
  
  # a cada iteração multiplica-se o valor agregado pelo número à frente do que se multiplicou na iteração passada
  x = x*(count+1)
}

print(count)

