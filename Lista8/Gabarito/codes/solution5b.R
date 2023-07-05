# taxa de crescimento de população total
wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(total_pop_growth, na.rm = TRUE)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))