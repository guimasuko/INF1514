grafico_funcao_2grau <- function(a, b, c) {
  # primeiro geramos uma sequência de valores para x, de -10 a 10, de meio em meio
  x <- seq(-10, 10, 0.5)
  # depois geramos uma sequência de valores nulos do mesmo tamanho que o vetor x
  y <- rep(0, length(x))
  # precisamos de uma variável de indice
  index <- 0
  # agora faremos um loop, para cada valor de x, temos um valor de y respectivo
  for (valor_x in x) {
    index <- index + 1
    y[index] <- a * valor_x^2 + b * valor_x + c
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