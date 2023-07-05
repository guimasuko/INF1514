# Una todos dataframes
df_names$country

# primeira maneira (mais direta)
df <- list(argentina,brazil,canada,chile,colombia,denmark, 
           france,germany,italy,paraguay,peru,spain,united_kingdom,
           united_states,uruguay,world) %>%
  reduce(full_join, by='year')

# segunda maneira
df <- full_join(argentina, brazil, by='year')
df <- full_join(df, canada, by='year')
df <- full_join(df, chile, by='year')
df <- full_join(df, colombia, by='year')
df <- full_join(df, denmark, by='year')
df <- full_join(df, france, by='year')
df <- full_join(df, germany, by='year')
df <- full_join(df, italy, by='year')
df <- full_join(df, paraguay, by='year')
df <- full_join(df, peru, by='year')
df <- full_join(df, spain, by='year')
df <- full_join(df, united_kingdom, by='year')
df <- full_join(df, united_states, by='year')
df <- full_join(df, uruguay, by='year')
df <- full_join(df, world, by='year')

# renomeando as colunas
colnames(df)[14:15] <- c("United_Kingdom", "United_States" )