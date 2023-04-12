rm(list=ls())


# declarando a variável a ser utilizada
x <- 0

for (i in 1:11) {
  print(x)
  # precisamos ir incrementando 1 a cada iteração
  x <- x + 1
}


# declarando a variável a ser utilizada 
x <- 0

while (x <= 5) {
  print(x)
  # precisamos ir incrementando 1 a cada iteração
  x <- x + 1
}