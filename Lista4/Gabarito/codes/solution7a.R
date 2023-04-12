rm(list=ls())


# criando um vetor que guardará a sequência de Fibonacci com os dois primeiros elementos da sequência
fib = c(0,1)

# o loop começa no índice 3 porque já definimos os dois primeiros elementos
for (i in 3:50) {
  
  # cada elemento subsequente é definimo pela soma dos dois anteriores
  fib[i] = fib[i-1] + fib[i-2]
}

print(fib)