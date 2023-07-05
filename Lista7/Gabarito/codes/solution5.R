# dropando os NA's de canada
canada_ <- canada %>%
  drop_na()

# mantendo somente os dados onde o PIBpc é menor que 8000
brazil_ <- brazil %>%
  filter(Brazil <= 8000)