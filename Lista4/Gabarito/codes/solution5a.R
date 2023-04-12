rm(list=ls())

# declarando uma variável que guardará o valor do produtório 
fatorial = 1

# loop
for (i in 1:10) {
  fatorial = fatorial*i
}

print(fatorial)