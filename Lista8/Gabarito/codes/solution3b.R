# taxa de crescimento da população total agrupados por região para o ano de 2010
wdi %>%
  group_by(region) %>%
  filter(year == 2010) %>%
  summarise(media = mean(total_pop_growth),
            maximo = max(total_pop_growth),
            minimo = min(total_pop_growth))