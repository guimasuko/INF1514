# taxa de população urbana agrupados por região para o ano de 2020
wdi %>%
  group_by(region) %>%
  filter(year == 2020) %>%
  summarise(media = mean(urban_rate),
            maximo = max(urban_rate),
            minimo = min(urban_rate))