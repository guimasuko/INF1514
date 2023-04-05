numero_primo <- function(numero) {
  # precisamos criar uma sequência na qual um loop será usado
  seq = 2:(numero-1)
  # criamos também uma variável lógica (binária) que recebe TRUE (se for primo)
  # e FALSE (caso contrário)
  e_primo <- TRUE
  if (numero == 2) {
    # a sequência para o número 2 ficaria 2:1, não é a maneira que gostaríamos,
    # para esse caso sabemos que o 2 é um número primo
    return(paste(numero,'é um número primo'))
  } else {
    # caso contrário, fazemos um loop, se o parâmetro passado for divisível por 
    # algum valor dentre os pertencentes a sequência, então não é primo
    for (i in seq) {
      if ((numero %% i) == 0 ) {
        e_primo <- FALSE
        # se for divisível, guardaremos os valores aos quais decompõe o parâmetro
        decomp_1 <- i
        decomp_2 <- (numero / i)
        # break é uma função que força o loop a parar
        break
      }
    }
    if (e_primo == TRUE) {
      return(paste(numero,'é um número primo'))
    } else {
      return(paste(numero,'não é um número primo porque',decomp_1,'x',decomp_2,'=',numero))
    }
  }
}



# valores de 2 à 20

numero_primo(2)
numero_primo(3)
numero_primo(4)
numero_primo(5)
numero_primo(6)
numero_primo(7)
numero_primo(8)
numero_primo(9)
numero_primo(10)
numero_primo(11)
numero_primo(12)
numero_primo(13)
numero_primo(14)
numero_primo(15)
numero_primo(16)
numero_primo(17)
numero_primo(18)
numero_primo(19)
numero_primo(20)


# 577
numero_primo(577)

# 753
numero_primo(753)

# 997
numero_primo(997)