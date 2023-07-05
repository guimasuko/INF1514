# América do Norte
pais_regiao %>%
  filter(region == regioes[2,1])

# plot
ggplot(df, aes(year)) +       
  geom_line(aes(y = Canada, color = "Canada")) +
  geom_line(aes(y = United_States, color = "United States")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values=c("Canada"='red',
                              'United States'='blue'))