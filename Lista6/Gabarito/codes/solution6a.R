df = merge(x = ipca, y = ibov, by = 'row.names')

rownames(df) <- df$Row.names

df <- df[ ,c('IPCA_Acumulado', 'Ibovespa')]


df <- merge(x = df, y = futuroDI, by = 'row.names')

rownames(df) <- df$Row.names

df <- df[ ,c('IPCA_Acumulado', 'Ibovespa', 'Futuro_DI')]
View(df)