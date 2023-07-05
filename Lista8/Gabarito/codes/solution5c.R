# taxa de crescimento de população urbana
wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(urban_pop_growth, na.rm = TRUE)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))