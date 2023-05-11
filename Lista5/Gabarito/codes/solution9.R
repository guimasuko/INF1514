# criando um dataframe apenas com carros manuais
mtcars_manual <- mtcars[mtcars$am == 1, ]
mtcars_manual

# tomando o peso médio em quilogramas dos carros manuais
mean_kg_manual <- mean(mtcars_manual$wt_kg)
mean_kg_manual