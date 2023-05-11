# pegando o valor máximo de milhas por galão do dataframe mtcars
max_mpg <- max(mtcars$mpg)
max_mpg

# selecionando a linha de dado que contém milhas por galão idêntico ao máximo
mtcars[mtcars$mpg == max_mpg, ]