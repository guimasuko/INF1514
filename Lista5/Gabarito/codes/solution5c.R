# calculando correlação
correlacao(mtcars$mpg, mtcars$hp)

# função built-in
cor(mtcars$mpg, mtcars$hp)

# teste estatístico
cor.test(mtcars$mpg, mtcars$hp)