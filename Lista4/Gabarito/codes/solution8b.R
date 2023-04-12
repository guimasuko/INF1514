rm(list=ls())


fibonacciWhile <- function (n) {
  # criando um vetor que guardará a sequência de Fibonacci com os dois primeiros elementos da sequência
  fib = c(0,1)
  
  # criando uma variável que conta a quantidade de elementos na sequência
  i <- 2
  while (i < n) {
    # a cada iteração a sequência ganha um novo elemento
    i <- i + 1
    
    # cada elemento subsequente é definimo pela soma dos dois anteriores
    fib[i] = fib[i-1] + fib[i-2] 
  }
  return(fib)
}

# teste

fibonacciWhile(10)
