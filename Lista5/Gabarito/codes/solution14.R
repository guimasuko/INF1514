# peso máximo dos carros manuais
max_kg_manual <- max(mtcars_manual$wt_kg)
max_kg_manual

# quantidade de carros automáticos mais leve que o carro manual mais pesado
n_carros_auto_leves <- nrow(mtcars_manual[mtcars_auto$wt_kg < max_kg_manual,])
n_carros_auto_leves

# probabilidade em porcentagem
round((n_carros_auto_leves / n_carros_auto) * 100, 2)