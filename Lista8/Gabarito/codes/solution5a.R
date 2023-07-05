# taxa de população urbana
wdi %>%
  group_by(country, region) %>%
  summarise(media = mean(urban_rate)) %>%
  group_by(region) %>%
  summarise(maximo = max(media),
            minimo = min(media))