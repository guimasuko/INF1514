rm(list=ls())


# loop para o primeiro elemento do produto
for (x1 in 1:10) {
  # loop para o segundo elemento do produto
  for (x2 in 1:10) {
    # resultado do produto
    y = x1 * x2
    print(paste(x1,'x',x2,'=',y))
  }
}
