derivada_polinomio <- function(vetor) {
  n = length(vetor)
  if(n == 1) {
    a = vetor[1]
    derivada_constante(a)
  } else if(n == 2) {
    a = vetor[1]
    b = vetor[2]
    derivada_f1(a, b)
  } else if(n == 3) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    derivada_f2(a, b, c)
  } else if(n == 4) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    derivada_f3(a, b, c, d)
  } else if(n == 5) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    derivada_f4(a, b, c, d, e)
  } else if(n == 6) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    derivada_f5(a, b, c, d, e, f)
  } else if(n == 7) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    g = vetor[7]
    derivada_f6(a, b, c, d, e, f, g)
  } else if(n == 8) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    g = vetor[7]
    h = vetor[8]
    derivada_f7(a, b, c, d, e, f, g, h)
  } else if(n == 9) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    g = vetor[7]
    h = vetor[8]
    i = vetor[9]
    derivada_f8(a, b, c, d, e, f, g, h, i)
  } else if(n == 10) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    g = vetor[7]
    h = vetor[8]
    i = vetor[9]
    j = vetor[10]
    derivada_f9(a, b, c, d, e, f, g, h, i, j)
  } else if(n == 11) {
    a = vetor[1]
    b = vetor[2]
    c = vetor[3]
    d = vetor[4]
    e = vetor[5]
    f = vetor[6]
    g = vetor[7]
    h = vetor[8]
    i = vetor[9]
    j = vetor[10]
    k = vetor[11]
    derivada_f10(a, b, c, d, e, f, g, h, i, j, k)
  } 
}



vetor1 = c(11)
vetor2 = c(11, 10)
vetor3 = c(11, 10, 9)
vetor4 = c(11, 10, 9, 8)
vetor5 = c(11, 10, 9, 8, 7)
vetor6 = c(11, 10, 9, 8, 7, 6)
vetor7 = c(11, 10, 9, 8, 7, 6, 5)
vetor8 = c(11, 10, 9, 8, 7, 6, 5, 4)
vetor9 = c(11, 10, 9, 8, 7, 6, 5, 4, 3)
vetor10 = c(11, 10, 9, 8, 7, 6, 5, 4, 3, 2)
vetor11 = c(11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1)




derivada_polinomio(vetor1)
derivada_polinomio(vetor2)
derivada_polinomio(vetor3)
derivada_polinomio(vetor4)
derivada_polinomio(vetor5)
derivada_polinomio(vetor6)
derivada_polinomio(vetor7)
derivada_polinomio(vetor8)
derivada_polinomio(vetor9)
derivada_polinomio(vetor10)
derivada_polinomio(vetor11)
