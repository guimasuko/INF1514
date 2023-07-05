# taxa de população urbana
wdi %>%
  group_by(country) %>%
  summarise(media = mean(urban_rate),
            maximo = max(urban_rate),
            minimo = min(urban_rate))

# taxa de crescimento da população total
wdi %>%
  group_by(country) %>%
  summarise(media = mean(total_pop_growth, na.rm = TRUE),
            maximo = max(total_pop_growth, na.rm = TRUE),
            minimo = min(total_pop_growth, na.rm = TRUE)) 

# taxa de crescimento da população urbana
wdi %>%
  group_by(country) %>%
  summarise(media = mean(urban_pop_growth, na.rm = TRUE),
            maximo = max(urban_pop_growth, na.rm = TRUE),
            minimo = min(urban_pop_growth, na.rm = TRUE)) 