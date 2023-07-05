# europa
pais_regiao %>%
  filter(region == "Europe")

# plot
ggplot(df, aes(year)) +
  geom_line(aes(y = Denmark, color = "Denmark")) +
  geom_line(aes(y = France, color = "France")) +
  geom_line(aes(y = Germany, color = "Germany")) +
  geom_line(aes(y = Italy, color = "Italy")) +
  geom_line(aes(y = Spain, color = "Spain")) +
  geom_line(aes(y = United_Kingdom, color = "United Kingdom")) +
  labs(y = "Urban Population Rate", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Denmark" = "purple", "France" = "blue", "Germany" = "black", 
                                "Italy" = "green", "Spain" = "yellow", "United Kingdom" = "cyan"))