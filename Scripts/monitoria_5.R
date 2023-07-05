rm(list=ls())

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()

library(tidyverse)

# install.packages('WDI')
library(WDI)

WDIsearch('gdp.*capita.*constant')

help(WDI)

# https://www.r-project.org/nosvn/pandoc/WDI.html


data = WDI(indicator='NY.GDP.PCAP.KD', 
           country=c('CA','US','BR','AR','CL','CO','PY','PE',
                     'UY','FR','DE','IT','ES','GB','DK','1W'), 
           extra = TRUE,
           start=1960,
           end=2021)
View(data)

regioes <- data %>%
  distinct(region)
regioes

data %>%
  distinct(region)



# Para as três regiões aos quais temos dados, retire as estatísticas, quantidade de países na nossa amostra,
# PIB per capita médio, máximo e mínimo.

data %>%
  group_by(region) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD), 
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))



data %>%
  filter(region == regioes[1,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD), 
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))


data %>%
  filter(region == regioes[2,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD),
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))


data %>%
  filter(region == regioes[3,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD),
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))


data %>%
  filter(country == 'Argentina') %>%
  filter(year == '2019') %>%
  select(NY.GDP.PCAP.KD)


# Tire as mesmas estatísticas para cada país durante todo período
            

data %>%
  group_by(country) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))

data %>%
  group_by(country) %>%
  filter(year %in% 1960:1980) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))

data %>%
  group_by(country) %>%
  filter(year %in% 1980:2000) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))

data %>%
  group_by(country) %>%
  filter(year %in% 2000:2021) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))


# Crie um Data frame para cada país, contendo apenas as colunas country, year, NY.GDP.PCAP.KD

paises <- data %>%
  distinct(country)
paises


argentina <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[1,1])

brazil <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[2,1])

canada <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[3,1])

chile <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[4,1])

colombia <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[5,1])

denmark <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[6,1])

france <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[7,1])

germany <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[8,1])

italy <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[9,1])

paraguay <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[10,1])

peru <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[11,1])

spain <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[12,1])

united_kingdom <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[13,1])

united_states <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[14,1])

uruguay <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[15,1])

world <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[16,1])


altera_df <- function(df) {
  # renomeando a coluna
  colnames(df)[3] <- df$country[1]
  
  # dropando a coluna country
  df$country <- NULL
  
  return(df)
}

df_names <- paises %>%
  mutate(country = tolower(country)) %>%
  mutate(country = str_replace(country, " ", "_"))

df_names

argentina <- altera_df(argentina)
brazil <- altera_df(brazil)
canada <- altera_df(canada)
chile <- altera_df(chile)
colombia <- altera_df(colombia)
denmark <- altera_df(denmark)
france <- altera_df(france)
germany <- altera_df(germany)
italy <- altera_df(italy)
paraguay <- altera_df(paraguay)
peru <- altera_df(peru)
spain <- altera_df(spain)
united_kingdom <- altera_df(united_kingdom)
united_states <- altera_df(united_states)
uruguay <- altera_df(uruguay)
world <- altera_df(world)


# Drope todas linhas NA do dataframe canada (chame-o novo dataframe de canada_)

canada_ <- canada %>%
  drop_na()


# Drope todas linhas que tenham pib pc acima de 8000 do brazil

brazil_ <- brazil %>%
  filter(Brazil <= 8000)

# junte os dataframes canada_ e brazil_ com dados para os anos onde os dois países contenham dados

inner_join(canada_, brazil_, by = c("year" = "year"))

left_join(canada_, brazil_, by = c("year" = "year"))

right_join(canada_, brazil_, by = c("year" = "year"))

full_join(canada_, brazil_, by = c("year" = "year"))



# Una todos dataframes
df_names$country

df <- list(argentina,brazil,canada,chile,colombia,denmark, 
     france,germany,italy,paraguay,peru,spain,united_kingdom,
     united_states,uruguay,world) %>%
  reduce(full_join, by='year')



df <- full_join(argentina, brazil, by='year')
df <- full_join(df, canada, by='year')
df <- full_join(df, chile, by='year')
df <- full_join(df, colombia, by='year')
df <- full_join(df, denmark, by='year')
df <- full_join(df, france, by='year')
df <- full_join(df, germany, by='year')
df <- full_join(df, italy, by='year')
df <- full_join(df, paraguay, by='year')
df <- full_join(df, peru, by='year')
df <- full_join(df, spain, by='year')
df <- full_join(df, united_kingdom, by='year')
df <- full_join(df, united_states, by='year')
df <- full_join(df, uruguay, by='year')
df <- full_join(df, world, by='year')

colnames(df)[14:15] <- c("United_Kingdom", "United_States" )

# Crie um gráfico para cada região do mundo contendo as séries temporais dos países nessa região


pais_regiao <- data %>%
  group_by(region) %>%
  distinct(country)

pais_regiao %>%
  filter(region == regioes[1,1])

ggplot(df, aes(year)) +       
  geom_line(aes(y = Argentina, color = "Argentina")) +
  geom_line(aes(y = Brazil, color = "Brazil")) +
  geom_line(aes(y = Chile, color = "Chile")) +
  geom_line(aes(y = Colombia, color = "Colombia")) +
  geom_line(aes(y = Paraguay, color = "Paraguay")) +
  geom_line(aes(y = Peru, color = "Peru")) +
  geom_line(aes(y = Uruguay, color = "Uruguay")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Argentina" = "cyan", "Brazil" = "green", "Chile" = "red", 
                                "Colombia" = "yellow", "Paraguay" = "purple", "Peru" = "black",
                                "Uruguay" = "blue"))



pais_regiao %>%
  filter(region == regioes[2,1])


ggplot(df, aes(year)) +       
  geom_line(aes(y = Canada, color = "Canada")) +
  geom_line(aes(y = United_States, color = "United States")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values=c("Canada"='red','United States'='blue'))



pais_regiao %>%
  filter(region == regioes[3,1])


ggplot(df, aes(year)) +
  geom_line(aes(y = Denmark, color = "Denmark")) +
  geom_line(aes(y = France, color = "France")) +
  geom_line(aes(y = Germany, color = "Germany")) +
  geom_line(aes(y = Italy, color = "Italy")) +
  geom_line(aes(y = Spain, color = "Spain")) +
  geom_line(aes(y = United_Kingdom, color = "United Kingdom")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Denmark" = "purple", "France" = "blue", "Germany" = "black", 
                                "Italy" = "green", "Spain" = "yellow", "United Kingdom" = "cyan"))


