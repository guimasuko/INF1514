# Europa
pais_regiao %>%
  filter(region == regioes[3,1])

# plot
ggplot(df, aes(year)) +
  geom_line(aes(y = Denmark, color = "Denmark")) +
  geom_line(aes(y = France, color = "France")) +
  geom_line(aes(y = Germany, color = "Germany")) +
  geom_line(aes(y = Italy, color = "Italy")) +
  geom_line(aes(y = Spain, color = "Spain")) +
  geom_line(aes(y = United_Kingdom, color = "United Kingdom")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Denmark" = "purple", 
                                "France" = "blue",
                                "Germany" = "black", 
                                "Italy" = "green",
                                "Spain" = "yellow",
                                "United Kingdom" = "cyan"))