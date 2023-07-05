# função
altera_df <- function(df) {
  # renomeando a coluna
  colnames(df)[3] <- df$country[1]
  
  # dropando a coluna country
  df$country <- NULL
  
  return(df)
}

# nomes dos dataframes
df_names <- paises %>%
  mutate(country = tolower(country)) %>%
  mutate(country = str_replace(country, " ", "_"))

df_names

# alterando os dataframes
argentina <- altera_df(argentina)
brazil <- altera_df(brazil)
canada <- altera_df(canada)
chile <- altera_df(chile)
colombia <- altera_df(colombia)
denmark <- altera_df(denmark)
france <- altera_df(france)
germany <- altera_df(germany)
italy <- altera_df(italy)
paraguay <- altera_df(paraguay)
peru <- altera_df(peru)
spain <- altera_df(spain)
united_kingdom <- altera_df(united_kingdom)
united_states <- altera_df(united_states)
uruguay <- altera_df(uruguay)
world <- altera_df(world)