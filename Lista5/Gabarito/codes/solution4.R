# criando um dataframe apenas com os carros menos potentes
mtcars_menos_potentes <- mtcars[mtcars$hp <= 120,]

# pegando o valor mínimo de milhas por galão do dataframe mtcars_menos_potentes
min_mpg_potentes <- min(mtcars_menos_potentes$mpg)
min_mpg_potentes

# selecionando a linha de dado que contém milhas por galão idêntico ao mínimo
mtcars_menos_potentes[mtcars_menos_potentes$mpg == min_mpg_potentes, ]