# criando um dataframe apenas com carros automáticos
mtcars_auto <- mtcars[mtcars$am == 0, ]
mtcars_auto

# tomando o peso médio em quilogramas dos carros automáticos
mean_kg_auto <- mean(mtcars_auto$wt_kg)
mean_kg_auto