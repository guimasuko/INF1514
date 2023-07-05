# primeira maneira, usando ifelse
wdi <- wdi %>%
  mutate(region = ifelse(country %in% c("Argentina", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguay"), "South America", ifelse(country %in% c("Canada" ,"United States"), "North America", "Europe")))

# segunda maneira, usando o case_when
wdi <- wdi %>%
  mutate(region = case_when(
    country %in% c("Argentina", "Brazil", "Chile", "Colombia", "Paraguay", "Peru", "Uruguay") ~ "South America",
    country %in% c("Canada" ,"United States") ~ "North America",
    country %in% c("Denmark", "France", "Germany", "Italy", "Spain", "United Kingdom") ~ "Europe"
  ))