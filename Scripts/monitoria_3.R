rm(list=ls())

getwd()

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()

library("descr")


file.head("Lista6/Gabarito/data/futuroDI.CSV")
file.head("Lista6/Gabarito/data/ipca.CSV")
file.head("Lista6/Gabarito/data/ibov.CSV")

help(read.csv)

futuroDI <- read.csv("Lista6/Gabarito/data/futuroDI.CSV",
                     dec=".",
                     fileEncoding = "UTF-8-BOM")

View(futuroDI)

ipca <- read.csv("Lista6/Gabarito/data/ipca.CSV",
                     dec=".",
                     fileEncoding = "UTF-8-BOM")

View(ipca)

ibov <- read.csv("Lista6/Gabarito/data/ibov.CSV",
                     dec=".",
                     fileEncoding = "UTF-8-BOM")

View(ibov)


# indexando pela data

rownames(futuroDI) <- futuroDI$X
rownames(ipca) <- ipca$X
rownames(ibov) <- ibov$X

# dropando essas colunas

futuroDI <- futuroDI['BRPRE1M.BMF']
ipca$X <- NULL
ibov$X <- NULL

# salvando ipca e ibov em .txt

# write.table(ipca, file = "Lista6/Gabarito/data/ipca.txt", sep = " ",
#             row.names = TRUE, col.names = FALSE)
# 
# write.table(ibov, file = "Lista6/Gabarito/data/ibov.txt", sep = " ",
#             row.names = TRUE, col.names = NA)

# lendo os dataframes em txt

# file.head("Lista6/Gabarito/data/ipca.txt")
# 
# ipca <- read.fwf("Lista6/Gabarito/data/ipca.txt",
#                  col.names = c('date', 'IPCA'),
#                  widths = c(13, 8),
#                  colClasses = c('character', 'numeric'),
#                  fileEncoding = 'UTF-8-BOM')

# renomeando algumas colunas

colnames(futuroDI)[1] <- 'Futuro_DI'
colnames(ipca)[1] <- 'IPCA'
colnames(ibov)[1] <- 'Ibovespa'

# criando o IPCA acumulado

ipca[2:nrow(ipca), 'IPCA_1'] <- ipca[1:(nrow(ipca) - 1), 'IPCA']
ipca[3:nrow(ipca), 'IPCA_2'] <- ipca[1:(nrow(ipca) - 2), 'IPCA']
ipca[4:nrow(ipca), 'IPCA_3'] <- ipca[1:(nrow(ipca) - 3), 'IPCA']
ipca[5:nrow(ipca), 'IPCA_4'] <- ipca[1:(nrow(ipca) - 4), 'IPCA']
ipca[6:nrow(ipca), 'IPCA_5'] <- ipca[1:(nrow(ipca) - 5), 'IPCA']
ipca[7:nrow(ipca), 'IPCA_6'] <- ipca[1:(nrow(ipca) - 6), 'IPCA']
ipca[8:nrow(ipca), 'IPCA_7'] <- ipca[1:(nrow(ipca) - 7), 'IPCA']
ipca[9:nrow(ipca), 'IPCA_8'] <- ipca[1:(nrow(ipca) - 8), 'IPCA']
ipca[10:nrow(ipca), 'IPCA_9'] <- ipca[1:(nrow(ipca) - 9), 'IPCA']
ipca[11:nrow(ipca), 'IPCA_10'] <- ipca[1:(nrow(ipca) - 10), 'IPCA']
ipca[12:nrow(ipca), 'IPCA_11'] <- ipca[1:(nrow(ipca) - 11), 'IPCA']


ipca['IPCA_Acumulado'] <- (1 + ipca['IPCA']) * (1 + ipca['IPCA_1']) * (1 + ipca['IPCA_2']) * (1 + ipca['IPCA_3']) * (1 + ipca['IPCA_4']) * (1 + ipca['IPCA_5']) * (1 + ipca['IPCA_6']) * (1 + ipca['IPCA_7']) * (1 + ipca['IPCA_8']) * (1 + ipca['IPCA_9']) * (1 + ipca['IPCA_10']) * (1 + ipca['IPCA_11']) - 1


# library(dplyr)
# 
# ipca <- ipca %>%
#   mutate(IPCA_1 = lag(IPCA),
#          IPCA_2 = lag(IPCA_1),
#          IPCA_3 = lag(IPCA_2),
#          IPCA_4 = lag(IPCA_3),
#          IPCA_5 = lag(IPCA_4),
#          IPCA_6 = lag(IPCA_5),
#          IPCA_7 = lag(IPCA_6),
#          IPCA_8 = lag(IPCA_7),
#          IPCA_9 = lag(IPCA_8),
#          IPCA_10 = lag(IPCA_9),
#          IPCA_11 = lag(IPCA_10)) %>%
#   rowwise() %>%
#   mutate(IPCA_Acumulado = (1 + IPCA) * (1 + IPCA_1) * (1 + IPCA_2) * (1 + IPCA_3) * (1 + IPCA_4) * (1 + IPCA_5) * (1 + IPCA_6) * (1 + IPCA_7) * (1 + IPCA_8) * (1 + IPCA_9) * (1 + IPCA_10) * (1 + IPCA_11) - 1)

# tirando o retorno do Ibovespa

# primeiro criaremos uma coluna com o Ibovespa defasado
# 
# ibov[2:nrow(ibov), 'Ibovespa_1'] <- ibov[1:(nrow(ibov) - 1), 'Ibovespa']
# 
# ibov['r_Ibovespa'] <- (ibov['Ibovespa'] - ibov['Ibovespa_1'])/ibov['Ibovespa_1']


# Mantenha só os dados que vamos utilizar

ipca <- ipca['IPCA_Acumulado']

# unindo os dataframes

df = merge(x = ipca, y = ibov, by = 'row.names')

rownames(df) <- df$Row.names

df <- df[ ,c('IPCA_Acumulado', 'Ibovespa')]


df <- merge(x = df, y = futuroDI, by = 'row.names')

rownames(df) <- df$Row.names

df <- df[ ,c('IPCA_Acumulado', 'Ibovespa', 'Futuro_DI')]
View(df)



library(tidyr)

df <- df %>% 
  drop_na()
View(df)


cor(df$IPCA_Acumulado, df$Futuro_DI)

cor.test(df$IPCA_Acumulado, df$Futuro_DI)



cor(df$Ibovespa, df$Futuro_DI)

cor.test(df$Ibovespa, df$Futuro_DI)


