# américa do norte
pais_regiao %>%
  filter(region == "North America")

# plot
ggplot(df, aes(year)) +       
  geom_line(aes(y = Canada, color = "Canada")) +
  geom_line(aes(y = United_States, color = "United States")) +
  labs(y = "Urban Population Rate", x = "Year",  color = "Country") +
  scale_color_manual(values=c("Canada"='red','United States'='blue'))