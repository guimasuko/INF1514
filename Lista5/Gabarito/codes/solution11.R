# quantidade de carros manuais
n_carros_manual <- nrow(mtcars_manual)

# quantidade de carros manuais mais pesados que o peso médio dos carros automáticos
n_carros_manual_pesados <- nrow(mtcars_manual[mtcars_manual$wt_kg > mean_kg_auto,])

# probabilidade em porcentagem
round((n_carros_manual_pesados / n_carros_manual) * 100, 2)