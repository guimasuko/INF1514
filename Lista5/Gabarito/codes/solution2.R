# pegando o valor mínimo de milhas por galão do dataframe mtcars
min_mpg <- min(mtcars$mpg)
min_mpg

# selecionando a linha de dado que contém milhas por galão idêntico ao mínimo
mtcars[mtcars$mpg == min_mpg, ]