rm(list=ls())

# funções

ate_n_for <- function (n) {
  # declarando a variável a ser utilizada
  x <- 1
  
  for (i in 1:n) {
    print(x)
    # precisamos ir incrementando 1 a cada iteração
    x <- x + 1
  }
  
}

# teste

ate_n_for(15)


ate_n_while <- function (n) {
  # declarando a variável a ser utilizada 
  x <- 1
  
  while (x <= n) {
    print(x)
    # precisamos ir incrementando 1 a cada iteração
    x <- x + 1
  }
}

# teste

ate_n_while(15)
