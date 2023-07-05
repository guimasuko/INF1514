rm(list=ls())

setwd('D:/Economia/PUC_RIO/Monitoria/INF1514 Introdução à Análise de Dados')

getwd()

library(tidyverse)
library(WDI)

wdi = WDI(indicator = c("total_pop"="SP.POP.TOTL", "urban_pop"="SP.URB.TOTL"), 
          country = c("CA","US","BR","AR","CL","CO","PY","PE",
                      "UY","FR","DE","IT","ES","GB","DK","1W"),
          start=1960,
          end=2020)

# crie uma coluna contendo informações sobre a taxa de população urbana
wdi <- wdi %>%
  mutate(urban_rate = urban_pop/total_pop)


  
wdi <- wdi %>% 
  group_by(country) %>%
  mutate(total_pop_growth = ( total_pop - lag(total_pop) )/ lag(total_pop)) %>%
  mutate(urban_pop_growth = ( urban_pop - lag(urban_pop) )/ lag(urban_pop))


# crie uma coluna contendo a região de cada país
wdi <- wdi %>%
  mutate(region = ifelse(country %in% c("Argentina", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguay"), "South America",
                         ifelse(country %in% c("Canada" ,"United States"), "North America", "Europe")))


wdi <- wdi %>%
  mutate(region = case_when(
    country %in% c("Argentina", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguay") ~ "South America",
    country %in% c("Canada" ,"United States") ~ "North America",
    country %in% c("Denmark", "France", "Germany", "Italy", "Spain", "United Kingdom") ~ "Europe"
    ))





# calcule a média, máximo e mínimo da taxa de população urbana agrupados por região, para o ano de 2020

wdi %>%
  group_by(region) %>%
  filter(year == 2020) %>%
  summarise(media = mean(urban_rate),
            maximo = max(urban_rate),
            minimo = min(urban_rate))

# calcule a média, máximo e mínimo da taxa de crecimento da população total agrupados por região, para o ano de 2010

wdi %>%
  group_by(region) %>%
  filter(year == 2010) %>%
  summarise(media = mean(total_pop_growth),
            maximo = max(total_pop_growth),
            minimo = min(total_pop_growth))


# calcule a média, máximo e mínimo da taxa de crecimento da população urbana agrupados por região, para o ano de 2016

wdi %>%
  group_by(region) %>%
  filter(year == 2016) %>%
  summarise(media = mean(urban_pop_growth),
            maximo = max(urban_pop_growth),
            minimo = min(urban_pop_growth))




# calcule a média, máximo e mínimo da taxa de população urbana, da taxa de crescimento da população total e urbana para cada país

wdi %>%
  group_by(country) %>%
  summarise(media = mean(urban_rate),
            maximo = max(urban_rate),
            minimo = min(urban_rate))


wdi %>%
  group_by(country) %>%
  summarise(media = mean(total_pop_growth, na.rm = TRUE),
            maximo = max(total_pop_growth, na.rm = TRUE),
            minimo = min(total_pop_growth, na.rm = TRUE)) 


wdi %>%
  group_by(country) %>%
  summarise(media = mean(urban_pop_growth, na.rm = TRUE),
            maximo = max(urban_pop_growth, na.rm = TRUE),
            minimo = min(urban_pop_growth, na.rm = TRUE)) 



# calcule o mínimo e o máximo das médias de taxa de população urbana agrupados por região

wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(urban_rate)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))


wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(total_pop_growth, na.rm = TRUE)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))


wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(urban_pop_growth, na.rm = TRUE)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))


# 

paises <- wdi %>%
  distinct(country)
paises

argentina <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[1,1])

brazil <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[2,1])

canada <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[3,1])

chile <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[4,1])

colombia <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[5,1])

denmark <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[6,1])

france <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[7,1])

germany <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[8,1])

italy <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[9,1])

paraguay <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[10,1])

peru <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[11,1])

spain <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[12,1])

united_kingdom <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[13,1])

united_states <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[14,1])

uruguay <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[15,1])

world <- wdi %>%
  select(country, year, urban_rate) %>%
  filter(country == paises[16,1])


altera_df <- function(df) {
  # mudando a descrição da coluna
  attr(df$urban_rate, "label") <- "Urban Population Rate"
  
  # renomeando a coluna
  colnames(df)[3] <- df$country[1]
  
  # dropando a coluna country
  df$country <- NULL
  
  return(df)
}


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


pais_regiao <- wdi %>%
  group_by(region) %>%
  distinct(country)


pais_regiao %>%
  filter(region == "South America")

ggplot(df, aes(year)) +       
  geom_line(aes(y = Argentina, color = "Argentina")) +
  geom_line(aes(y = Brazil, color = "Brazil")) +
  geom_line(aes(y = Chile, color = "Chile")) +
  geom_line(aes(y = Colombia, color = "Colombia")) +
  geom_line(aes(y = Paraguay, color = "Paraguay")) +
  geom_line(aes(y = Peru, color = "Peru")) +
  geom_line(aes(y = Uruguay, color = "Uruguay")) +
  labs(y = "Urban Population Rate", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Argentina" = "cyan", "Brazil" = "green", "Chile" = "red", 
                                "Colombia" = "yellow", "Paraguay" = "purple", "Peru" = "black",
                                "Uruguay" = "blue"))



pais_regiao %>%
  filter(region == "North America")


ggplot(df, aes(year)) +       
  geom_line(aes(y = Canada, color = "Canada")) +
  geom_line(aes(y = United_States, color = "United States")) +
  labs(y = "Urban Population Rate", x = "Year",  color = "Country") +
  scale_color_manual(values=c("Canada"='red','United States'='blue'))



pais_regiao %>%
  filter(region == "Europe")


ggplot(df, aes(year)) +
  geom_line(aes(y = Denmark, color = "Denmark")) +
  geom_line(aes(y = France, color = "France")) +
  geom_line(aes(y = Germany, color = "Germany")) +
  geom_line(aes(y = Italy, color = "Italy")) +
  geom_line(aes(y = Spain, color = "Spain")) +
  geom_line(aes(y = United_Kingdom, color = "United Kingdom")) +
  labs(y = "Urban Population Rate", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Denmark" = "purple", "France" = "blue", "Germany" = "black", 
                                "Italy" = "green", "Spain" = "yellow", "United Kingdom" = "cyan"))
