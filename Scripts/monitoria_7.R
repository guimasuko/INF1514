rm(list=ls())

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()


# Material Gráficos

n <- 200
x <- 1:n
y <- 10 + 3*x
plot(x, y)

y_ <- y + rnorm(n, sd = 50)
plot(x, y_)

plot(x, y_, type = 'l')

x <- rnorm(500)
hist(x)
hist(x, breaks = 6)


idade <- c(8, 9, 12, 20, 22, 18, 21, 18, 35, 23, 10, 12, 17)
summary(idade)

boxplot(idade, main = 'Boxplot: idade', col = 'blue')



filhos <- c(0, 2, 1, 3, 2, 0, 1, 3, 1, 1, 1, 0, 0)
tabela <- table(filhos)

barplot(tabela, 
        main = 'Paternidade',
        xlab = 'Quantidade de filhos',
        ylab = 'Quantidade de pessoas')

pie(tabela, main = 'Paternidade')


# Exemplo 1

# Uma empresa produz de placas aço em suas 4 filiais cujo valor de referência é
# 1.200kg. Após verificar que lotes com placas não passaram pelo controle de
# qualidade em todas as filiais, as equipes das filiais 1 e 3 passaram por um
# treinamento. Com o objetivo de verificar o quão eficaz foram os treinamentos,
# foram selecionadas 10 placas produzidas em cada uma das 4 filiais. Os dados
# das filiais estão armazenados em arquivos CSV com o nome placafilialX.csv.

# • Elabore um gráfico de barras para o quantidade de placas da amostra da filial 1 por
# estado. O gráfico deve ter: título “Placas por estado filial 1”; eixo x com rótulo “Estado”;
# eixo y com rótulo “Quantidade”.

filial1 <- read.table("Aulas/INF1514_Material_Graficos/placafilial1.csv", sep = ";", dec = ",")
names(filial1) <- c("peso", "estado")

tabela <- table(filial1$estado)
barplot(tabela, 
        main = 'Placas por Estado - Filial 1',
        xlab = 'Estado',
        ylab = 'Quantidade')


# • Elabore um gráfico de pizza para a quantidade de placas da amostra da filial 1 por
# estado. O gráfico deve ter o título “Placas por estado filial 1”.

pie(tabela, main = 'Placas por Estado - Filial 1')


# • Elabore um histograma com cinco barras para o peso das placas da amostra da filial 1. O
# gráfico deve ter: o título “Histograma de placas filial 1”.

x <- filial1$peso
hist(x, main = 'Histograma de Placas - Filial 1', breaks = 5)


# Exemplo 2

# Sabendo que as filiais 2 e 4 não passaram pelo treinamento, analise se são
# falsas ou verdadeiras as afirmativas abaixo:


filial2 <- read.table("Aulas/INF1514_Material_Graficos/placafilial2.csv", sep = ";", dec = ",")
names(filial2) <- c("peso", "estado")

filial3 <- read.table("Aulas/INF1514_Material_Graficos/placafilial3.csv", sep = ";", dec = ",")
names(filial3) <- c("peso", "estado")

filial4 <- read.table("Aulas/INF1514_Material_Graficos/placafilial4.csv", sep = ";", dec = ",")
names(filial4) <- c("peso", "estado")


filial1$filial <- rep("1", 20)
filial2$filial <- rep("2", 20)
filial3$filial <- rep("3", 20)
filial4$filial <- rep("4", 20)


empresa.merge.1e2 <- merge(filial1, filial2, all = TRUE)
empresa.merge.3e4 <- merge(filial3, filial4, all = TRUE)
empresa <- merge(empresa.merge.1e2, empresa.merge.3e4, all = TRUE)
summary(empresa)


boxplot(empresa$peso ~ empresa$filial,
        xlab = 'Filial',
        ylab = 'Distribuição de Peso')


# • As equipes das filiais 1 e 3 produzem placas com menor variabilidade.
var(filial1$peso)
var(filial2$peso)
var(filial3$peso)
var(filial4$peso)
# Sim.

# • A equipe 4 é a que produz peças com maior variabilidade.
# Sim.

# • Na amostra da equipe 2, foi detectado um outlier.
# Não, a equipe 4 apresenta um outlier.

# • Na amostra da equipe 3, foi detectada a menor amplitude.
summary(filial1)
summary(filial2)
summary(filial3)
summary(filial4)
# Sim.

# • Como as placas das equipes 1 e 3 apresentam menor variabilidade e com valor médio
# próximo do valor de referência, pode-se concluir que o treinamento teve efeito positivo
# e que as demais filiais também deveriam realizar o treinamento.
# Sim.


library(DAAG)

head(ais)

head(mtcars)

library(ggplot2)

ggplot(data = mtcars)

ggplot(ais) +
  geom_point(mapping = aes(x = wt, y = ht))


ggplot(ais) +
  geom_point(mapping = aes(x = wt, y = ht)) +
  labs(x = 'Peso', y = 'Altura')


ggplot(ais) +
  geom_point(mapping = aes(x = wt, y = ht, color = as.factor(sex))) +
  labs(x = 'Peso', y = 'Altura')


ggplot(ais) +
  geom_point(mapping = aes(x = wt, y = ht, color = pcBfat)) +
  labs(x = 'Peso', y = 'Altura')


ggplot(ais) +
  geom_point(mapping = aes(x = wt, y = ht, color = pcBfat, size = ferr)) +
  labs(x = 'Peso', y = 'Altura')

help(ais)


ggplot(ais, mapping = aes(x = wt, y = ht)) +
  geom_point(color = 'red', size = 5, shape = 4, alpha = 0.2) +
  labs(x = 'Peso', y = 'Altura')


ggplot(ais, mapping = aes(x = ht)) +
  geom_histogram(bins = 30)


ggplot(ais) +
  geom_bar(aes(x = as.factor(sport)))


ggplot(ais) +
  geom_boxplot(aes(x = as.factor(sex), y = ht))


ggplot(ais) +
  geom_boxplot(aes(x = as.factor(sex), y = ht, fill = as.factor(sex)))


ggplot(data = ais) +
  geom_point(mapping = aes(x = wt, y = ht)) +
  facet_grid(sex~.)


ggplot(data = ais) +
  geom_point(mapping = aes(x = wt, y = ht)) +
  facet_grid(.~sex)



# Exercício 1

# Usando o banco mtcars e o pacote ggplot2, elabore um gráfico de dispersão,
# um gráfico barras, um histograma e um boxplot. Todos os gráficos deverão ter
# título e rótulos nos eixos x e y quando aplicável. Para o gráfico de dispersão
# criado, elabore um novo utilizando facets.


ggplot(data = mtcars) +
  geom_point(mapping = aes(x = hp, y = mpg)) +
  labs(x = "Potência", y = "Milhas por galão") +
  ggtitle("Gráfico de dispersão") +
  theme(plot.title = element_text(hjust = 0.50))


ggplot(data = mtcars) +
  geom_bar(mapping = aes(x = cyl)) +
  labs(x = "Cilindros", y = "Quantidade") +
  ggtitle("Gráfico de barras") +
  theme(plot.title = element_text(hjust = 0.50))


ggplot(data = mtcars) +
  geom_histogram(mapping = aes(x = mpg), bins = 8) +
  labs(x = "Milhas por galão", y = "Frequência") +
  ggtitle("Histograma") +
  theme(plot.title = element_text(hjust = 0.50))


ggplot(data = mtcars) +
  geom_boxplot(mapping = aes(x = as.factor(cyl), y = hp, fill = as.factor(cyl))) +
  labs(x = "Cilindros", y = "Potência") +
  ggtitle("Boxplot") +
  theme(plot.title = element_text(hjust = 0.50))


ggplot(data = mtcars) +
  geom_point(mapping = aes(x = hp, y = mpg)) +
  facet_grid (cyl~.) +
  labs(x = "Potência", y = "Milhas por galão") +
  ggtitle("Gráfico de dispersão") +
  theme(plot.title = element_text(hjust = 0.50))


library(descr)
file.head("Aulas/INF1514_Material_Graficos/DadosRJ.CSV")
dados <- read.table("Aulas/INF1514_Material_Graficos/DadosRJ.CSV", header=T, sep=";", dec=",",
                    encoding="UTF-8")
