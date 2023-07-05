# Países por região
pais_regiao <- data %>%
  group_by(region) %>%
  distinct(country)

# América Latina
pais_regiao %>%
  filter(region == regioes[1,1])

# plot
ggplot(df, aes(year)) +       
  geom_line(aes(y = Argentina, color = "Argentina")) +
  geom_line(aes(y = Brazil, color = "Brazil")) +
  geom_line(aes(y = Chile, color = "Chile")) +
  geom_line(aes(y = Colombia, color = "Colombia")) +
  geom_line(aes(y = Paraguay, color = "Paraguay")) +
  geom_line(aes(y = Peru, color = "Peru")) +
  geom_line(aes(y = Uruguay, color = "Uruguay")) +
  labs(y = "GDP per capita", x = "Year",  color = "Country") +
  scale_color_manual(values = c("Argentina" = "cyan", 
                                "Brazil" = "green",
                                "Chile" = "red", 
                                "Colombia" = "yellow", 
                                "Paraguay" = "purple", 
                                "Peru" = "black",
                                "Uruguay" = "blue"))
