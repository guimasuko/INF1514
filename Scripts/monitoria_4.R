rm(list=ls())

library(DBI)
library(RSQLite)
library(dplyr)

getwd()

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()

con <- dbConnect (RSQLite::SQLite(), dbname = "Aulas/INF1514_Material_7/Financeiro.db")

cliente <- dbGetQuery (con, "SELECT * FROM Cliente;")
nota <- dbGetQuery (con, "SELECT * FROM NotaFiscal;")

dbDisconnect(con)

View(cliente)

View(nota)

cliente

# função distinct (dplyr) retorna os valores únicos
estado.distinto <- distinct(cliente, Estado)
estado.distinto

# o parâmetro .keep_all é referente a manter todas as colunas do dataframe
estado.all.distinto <- distinct(cliente, Estado, .keep_all = TRUE)
estado.all.distinto

# função slice (dplyr) extrai as linhas por posição
linhas.selecionadas.cliente <- slice(cliente, 2:4)
linhas.selecionadas.cliente

nota

# função top_n (dplyr) seleciona o dataframe com base no ordenamento de uma coluna
top.menor.valor.nota <- top_n(nota, -3, Imposto)
top.menor.valor.nota

top.maior.valor.nota <- top_n(nota, 2, Imposto)
top.maior.valor.nota

# função top_frac (dplyr) seleciona o dataframe percentualmente, com base no ordenamento de uma (ou mais) coluna(s)
top.maior.valor.nota.frac <- top_frac(nota, 0.35, Valor - Imposto)
top.maior.valor.nota.frac

top.menor.valor.nota.frac <- top_frac(nota, -0.6, Valor - Imposto)
top.menor.valor.nota.frac


# função count (dplyr) conta a quantidade de linhas com a combinação única do conteúdo das variáveis indicadas
conta.cliente.estado <- count(cliente, Estado)
conta.cliente.estado

conta.nota.cliente.serie <- count(nota, CodigoCliente, Serie)
conta.nota.cliente.serie


# função summarise (dplyr) cria um resumo do dataframe, baseado nas estatísticas de suas colunas
summarise1.nota <- summarise(nota, quantidade = n(), maximo_valor = max(Valor))
summarise1.nota

summarise2.nota <- summarise(nota, qtd = n(), serie_unique = n_distinct(Serie), minimo_valor = min(Valor))
summarise2.nota

# função group_by (dplyr) separa os dados em grupos
grupo.cliente <- group_by(cliente, Estado)
grupo.cliente


# A função inner_join (a, b, by) retorna um data frame com as linhas do data
# frame a que possuem correspondente no b. o data frame retornado possui
# todas as colunas de a e b. No parâmetro by é especificada a relação de
# correspondência.

inner.join.cliente.nota <- inner_join(cliente, nota, by=c("Codigo" = "CodigoCliente"))
inner.join.cliente.nota


# A função left_join (a, b, by) retorna todas as linhas que estão no data frame a
# (mesmo sem correspondência em b) e as linhas de b que são comuns ao a. o
# data frame retornado possui todas as colunas de a e b. No parâmetro by é
# especificada a relação de correspondência.

left.join.nota.cliente <- left_join(nota, cliente, by = c("CodigoCliente" = "Codigo"))
left.join.nota.cliente


# A função right_join (a, b, by) retorna um data frame com todas as linhas do
# data frame b (mesmo sem correspondência em a) e as linhas de a que são
# comuns a b. o data frame retornado possui todas as colunas de a e b. No
# parâmetro by é especificada a relação de correspondência.

right.join.nota.cliente <- right_join(nota, cliente, by = c("CodigoCliente" = "Codigo"))
right.join.nota.cliente


# A função full_join (a, b, by) retorna um data frame com todas as linhas do
# data frame a (mesmo sem correspondência em b) e todas as linhas de b
# (mesmo sem correspondência em a).

full.join.cliente.nota <- full_join(cliente, nota, by = c("Codigo" = "CodigoCliente"))
full.join.cliente.nota


# A função semi_join (a, b, by) retorna um data frame com todas as linhas do
# data frame a que possuem correspondência em b. o data frame retornado
# possui todas as colunas de a e b. No parâmetro by é especificada a relação de
# correspondência.

semi.join.cliente.nota <- semi_join(cliente, nota, by = c("Codigo" = "CodigoCliente"))
semi.join.cliente.nota


# A função anti_join (a, b, by) retorna um data frame com todas as linhas do
# data frame a que não possuem correspondência em b. o data frame
# retornado possui todas as colunas de a e b. No parâmetro by é especificada a
# relação de correspondência.

anti.join.cliente.nota <- anti_join(cliente, nota, by = c("Codigo" = "CodigoCliente"))
anti.join.cliente.nota


# função filter (dplyr) retorna o dataframe filtrado por uma condição
cliente.RJ <- filter(cliente, Estado == "RJ")
cliente.RJ

# cliente novo
novo.cliente.RJ <- data.frame(Codigo = 111, Nome = "Bike for all", Estado = "RJ")
novo.cliente.RJ

# A função bind_rows (a, b) retorna um data frame com todas as linhas do data
# frame b adicionadas ao data frame a.
cliente.RJ <- bind_rows(cliente.RJ, novo.cliente.RJ)
cliente.RJ


# A função intersect (a, b) retorna um data frame com todas as linhas comuns
# aos data frames a e b. Compara todas as colunas.
intersecao.cliente <- intersect(cliente, cliente.RJ)
intersecao.cliente


# A função union (a, b) retorna um data frame com todas as linhas dos data
# frames a e b sem duplicidade. Compara todas as colunas.

uniao.cliente <- union(cliente, cliente.RJ)
uniao.cliente


# A função union_all (a, b) retorna um data frame com todas as linhas dos data
# frames a e b com duplicidade. Compara todas as colunas.

uniao.all.cliente <- union_all(cliente, cliente.RJ)
uniao.all.cliente


# A função setdiff (a, b) retorna um data frame com todas as linhas do data
# frame a que não estão no b. Compara todas as colunas.

diferenca.cliente <- setdiff(cliente, cliente.RJ)
diferenca.cliente


# Operador %>% (pipe)

# Exemplo 1
ordenado.cliente <- arrange(cliente, Codigo)
ordenado.cliente

ordenado.cliente <- cliente %>%
  arrange(Codigo)
ordenado.cliente


# Exemplo 2
filtrado.ordenado.cliente <- cliente %>%
  filter(Estado == 'RJ') %>%
  arrange(Codigo)
filtrado.ordenado.cliente


# Exemplo 3
library(ggplot2)
nota %>%
  ggplot(mapping = aes(x = Serie)) + geom_bar()


# Exemplo 4
nota %>%
  group_by(Serie) %>%
  summarise(Media = mean(Valor)) %>%
  ggplot(mapping = aes (x = Serie, y = Media)) + geom_bar(stat = 'identity')



# Datetime object

data1 <- c("14-02-2020")
data1 <- strptime(data1, format = '%d-%m-%Y')
data1


data2 <- c("15 Novembro 2018")
data2 <- strptime(data2, format = "%d %B %Y")
data2


data.hora <- c("25 Fevereiro 18, 16:14:49")
data.hora <- strptime(data.hora, "%d %B %y, %H:%M:%S")
data.hora

ano <- format(data.hora,"%Y")
ano


data.hora1 <- c("25 Fevereiro 18, 16:14:49")
data.hora1 <- strptime(data.hora1, "%d %B %y, %H:%M:%S")
data.hora1

data.hora2 <- c("23 Fevereiro 18, 15:14:49")
data.hora2 <- strptime(data.hora2, "%d %B %y, %H:%M:%S")
data.hora2

diferenca.horas <- difftime(data.hora1, data.hora2, units='hours')
diferenca.horas



data.hora1 <- c("25 Fevereiro 18, 16:14:49")
data.hora1 <- strptime(data.hora1, "%d %B %y, %H:%M:%S")
data.hora1 <- data.hora1 + 59
data.hora1


data.hora1 <- c("25 Fevereiro 18, 16:14:49")
data.hora1 <- strptime(data.hora1, "%d %B %y, %H:%M:%S")
data.hora1 <- data.hora1 - 2*60
data.hora1


rm(list=ls())
library(tidyverse)

getwd()

clientes <- read_csv2("Aulas/INF1514_Material_7/NovosClientes.csv", 
                      col_types = cols(col_character(),
                                       col_character(),
                                       col_character(),
                                       col_character(),
                                       col_character(),
                                       col_integer()))


as_tibble(clientes)

# A função arrange permite ordenar por uma ou mais colunas.
clientes %>%
  arrange(DDD, Nome)

# A função slice permite extrair linhas por posição.
clientes %>%
  arrange(DDD, Nome) %>%
  slice(2:5)

# A função filter permite filtrar por uma ou mais colunas.
clientes %>% 
  filter(DDD %in% c("14", "13"))

# A função sample_n permite extrair uma amostra de tamanho size com ou sem
# reposição.
clientes %>% 
  sample_n(size = 5, replace = FALSE)

# A função sample_frac permite extrair uma amostra percentual size com ou
# sem reposição.
clientes %>%
  sample_frac(size = 0.1, replace = FALSE)

# A função mutate_if permite alterar dados de colunas. No exemplo, os nomes
# são colocados em maiúsculo pela função str_to_upper do pacote stringr.
clientes %>% 
  mutate_if(is.character, str_to_upper)

# A função mutate_if permite alterar dados de colunas. No exemplo, se o tipo
# da coluna for integer ela é convertida para double.
clientes %>%
  mutate_if(is.integer, as.double)

# A função replace_na permite alterar dados de colunas. No exemplo, se o valor
# do campo Classificacao for NA ele assume o valor ‘N’ e se o valor do campo
# Divida for NA ele assume o valor 0.
clientes %>% 
  replace_na(replace = list(Classificacao = 'N', Divida = 0))

