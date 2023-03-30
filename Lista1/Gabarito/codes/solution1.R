raizes_funcao_2grau <- function(a, b, c){
  # primeiro definimos o delta
  delta = b^2 - 4*a*c
  # apos isso, vamos quebrar nos três casos
  if(delta < 0){
    # se o delta é negativo, a parabola não tem raíz
    return(cat("Essa função não tem raízes. A parábola não corta o eixo das abscissas!"))
  } else if(delta == 0){
    # se o delta é igual a zero, a raíz é unitária
    x = (-b)/(2*a)
    return(cat("Essa função tem apenas uma raíz. Seu valor é",x,"."))
  } else{
    # se o delta é positivo, então temos duas raízes
    x_1 = (-b + sqrt(delta))/(2*a)
    x_2 = (-b - sqrt(delta))/(2*a)
    return(cat("Essa função tem duas raízes. As duas raízes dessa função são respectivamente",x_1,"e",x_2,"."))
  }
}



# Testando nas funcoes

# f(x) = x^2 
raizes_funcao_2grau(1, 0, 0)


# f(x) = 2x^2 - 18
raizes_funcao_2grau(a=2, b=0, c=-18)


# f(x) = x^2 - 4x + 10
raizes_funcao_2grau(a=1, b=-4, c=10)


# f(x) = -2x^2 + 20x - 50
raizes_funcao_2grau(a=-2, b=20, c=-50)