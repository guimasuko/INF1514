# dataframe contendo os países
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