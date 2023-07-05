# taxa de crescimento da população urbana agrupados por região para o ano de 2016
wdi %>%
  group_by(region) %>%
  filter(year == 2016) %>%
  summarise(media = mean(urban_pop_growth),
            maximo = max(urban_pop_growth),
            minimo = min(urban_pop_growth))