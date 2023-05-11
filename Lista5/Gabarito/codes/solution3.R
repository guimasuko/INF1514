# criando um dataframe apenas com os carros mais potentes
mtcars_mais_potentes <- mtcars[mtcars$hp > 120,]

# pegando o valor máximo de milhas por galão do dataframe mtcars_mais_potentes
max_mpg_potentes <- max(mtcars_mais_potentes$mpg)
max_mpg_potentes

# selecionando a linha de dado que contém milhas por galão idêntico ao máximo
mtcars_mais_potentes[mtcars_mais_potentes$mpg == max_mpg_potentes, ]