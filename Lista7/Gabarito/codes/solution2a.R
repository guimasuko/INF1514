data %>%
  group_by(country) %>%
  summarise(media = mean(NY.GDP.PCAP.KD, na.rm = TRUE), 
            maximo = max(NY.GDP.PCAP.KD, na.rm = TRUE), 
            minimo = min(NY.GDP.PCAP.KD, na.rm = TRUE))