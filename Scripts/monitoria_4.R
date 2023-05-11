rm(list=ls())

library(DBI)
# install.packages('RSQLite')
library(RSQLite)

getwd()

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()

con <- dbConnect (RSQLite::SQLite(), dbname = "Aulas/INF1514_Material_7/Financeiro.db")

cliente <- dbGetQuery (con, "SELECT * FROM Cliente;")
nota <- dbGetQuery (con, "SELECT * FROM NotaFiscal;")

dbDisconnect(con)

View(cliente)

View(nota)
