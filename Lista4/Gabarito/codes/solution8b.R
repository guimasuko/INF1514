rm(list=ls())


fibonacciWhile <- function (n) {
  # criando um vetor que guardará a sequência de Fibonacci com os dois primeiros elementos da sequência
  fib = c(0,1)
  
  # criando uma variável que conta a quantidade de elementos na sequência
  i <- 3
  while (i <= n) {
    # cada elemento subsequente é definimo pela soma dos dois anteriores
    fib[i] = fib[i-1] + fib[i-2] 
    
    # a cada iteração a sequência ganha um novo elemento
    i <- i + 1
  }
  return(fib)
}

# teste

fibonacciWhile(10)
