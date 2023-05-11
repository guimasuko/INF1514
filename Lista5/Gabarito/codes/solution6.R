rm(list=ls())

# aplicando a fórmula e multiplicando por 1000
mtcars$wt_kg <- (mtcars$wt/2.2046) * 1000