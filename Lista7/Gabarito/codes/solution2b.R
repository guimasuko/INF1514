data %>%
  group_by(country) %>%
  filter(year %in% 1960:1980) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))