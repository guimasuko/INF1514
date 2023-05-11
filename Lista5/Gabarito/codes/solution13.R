# peso mínimo dos carros automáticos
min_kg_auto <- min(mtcars_auto$wt_kg)
min_kg_auto

# quantidade de carros manuais mais pesados que o carro automático mais leve
n_carros_manual_pesados <- nrow(mtcars_manual[mtcars_manual$wt_kg > min_kg_auto,])
n_carros_manual_pesados

# probabilidade em porcentagem
round((n_carros_manual_pesados / n_carros_manual) * 100, 2)