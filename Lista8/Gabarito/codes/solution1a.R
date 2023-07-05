# coluna urban_rate
wdi <- wdi %>%
  mutate(urban_rate = urban_pop/total_pop)