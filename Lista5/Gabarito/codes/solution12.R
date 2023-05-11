# quantidade de carros automáticos
n_carros_auto <- nrow(mtcars_auto)

# quantidade de carros automáticos mais pesados que o peso médio dos carros manuais
n_carros_auto_pesados <- nrow(mtcars_manual[mtcars_auto$wt_kg > mean_kg_manual,])

# probabilidade em porcentagem
round((n_carros_auto_pesados / n_carros_auto) * 100, 2)