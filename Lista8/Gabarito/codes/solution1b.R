# coluna total_pop_growth e urban_pop_growth
wdi <- wdi %>% 
  group_by(country) %>%
  mutate(total_pop_growth = ( total_pop - lag(total_pop) )/ lag(total_pop)) %>%
  mutate(urban_pop_growth = ( urban_pop - lag(urban_pop) )/ lag(urban_pop))