# calculando a correlação
correlacao(mtcars$am, mtcars$wt_kg)

# função built-in
cor(mtcars$am, mtcars$wt_kg)

# teste estatístico
cor.test(mtcars$am, mtcars$wt_kg)