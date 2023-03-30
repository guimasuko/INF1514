# derivada constante

derivada_constante <- function(a) {
  return(paste('df(x)/dx = 0'))
}


derivada_constante(1)


# derivada função grau 1

derivada_f1 <- function(a, b) {
  a0 = a
  return(paste('df(x)/dx =',a0))
}


derivada_f1(1,2)


# derivada função grau 2

derivada_f2 <- function(a, b, c) {
  a0 = a*2
  a1 = b
  return(paste('df(x)/dx =',a0,'x +',a1))
}


derivada_f2(1,2,3)


# derivada função grau 3

derivada_f3 <- function(a, b, c, d) {
  a0 = a*3
  a1 = b*2
  a2 = c
  return(paste('df(x)/dx =',a0,'x^2 +',a1,'x +',a2))
}


derivada_f3(1,2,3,4)


# derivada função grau 4

derivada_f4 <- function(a, b, c, d, e) {
  a0 = a*4
  a1 = b*3
  a2 = c*2
  a3 = d
  return(paste('df(x)/dx =',a0,'x^3 +',a1,'x^2 +',a2,'x +',a3))
}


derivada_f4(1,2,3,4,5)


# derivada função grau 5

derivada_f5 <- function(a, b, c, d, e, f) {
  a0 = a*5
  a1 = b*4
  a2 = c*3
  a3 = d*2
  a4 = e
  return(paste('df(x)/dx =',a0,'x^4 +',a1,'x^3 +',a2,'x^2 +',a3,'x +',a4))
}


derivada_f5(1,2,3,4,5,6)


# derivada função grau 6

derivada_f6 <- function(a, b, c, d, e, f, g) {
  a0 = a*6
  a1 = b*5
  a2 = c*4
  a3 = d*3
  a4 = e*2
  a5 = f
  return(paste('df(x)/dx =',a0,'x^5 +',a1,'x^4 +',a2,'x^3 +',a3,'x^2 +',a4, 'x +',a5))
}


derivada_f6(1,2,3,4,5,6,7)


# derivada função grau 7

derivada_f7 <- function(a, b, c, d, e, f, g, h) {
  a0 = a*7
  a1 = b*6
  a2 = c*5
  a3 = d*4
  a4 = e*3
  a5 = f*2
  a6 = g
  return(paste('df(x)/dx =',a0,'x^6 +',a1,'x^5 +',a2,'x^4 +',a3,'x^3 +',a4, 'x^2 +',a5,'x +',a6))
}


derivada_f7(1,2,3,4,5,6,7,8)


# derivada função grau 8

derivada_f8 <- function(a, b, c, d, e, f, g, h, i) {
  a0 = a*8
  a1 = b*7
  a2 = c*6
  a3 = d*5
  a4 = e*4
  a5 = f*3
  a6 = g*2
  a7 = h
  return(paste('df(x)/dx =',a0,'x^7 +',a1,'x^6 +',a2,'x^5 +',a3,'x^4 +',a4, 'x^3 +',a5,'x^2 +',a6,'x +',a7))
}


derivada_f8(1,2,3,4,5,6,7,8,9)


# derivada função grau 9

derivada_f9 <- function(a, b, c, d, e, f, g, h, i, j) {
  a0 = a*9
  a1 = b*8
  a2 = c*7
  a3 = d*6
  a4 = e*5
  a5 = f*4
  a6 = g*3
  a7 = h*2
  a8 = i
  return(paste('df(x)/dx =',a0,'x^8 +',a1,'x^7 +',a2,'x^6 +',a3,'x^5 +',a4, 'x^4 +',a5,'x^3 +',a6,'x^2 +',a7,'x +',a8))
}


derivada_f9(1,2,3,4,5,6,7,8,9,10)


# derivada função grau 10

derivada_f10 <- function(a, b, c, d, e, f, g, h, i, j, k) {
  a0 = a*10
  a1 = b*9
  a2 = c*8
  a3 = d*7
  a4 = e*6
  a5 = f*5
  a6 = g*4
  a7 = h*3
  a8 = i*2
  a9 = j
  return(paste('df(x)/dx =',a0,'x^9 +',a1,'x^8 +',a2,'x^7 +',a3,'x^6 +',a4, 'x^5 +',a5,'x^4 +',a6,'x^3 +',a7,'x^2 +',a8,'x +',a9))
}


derivada_f10(1,2,3,4,5,6,7,8,9,10,11)
