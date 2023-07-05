library(tidyverse)

# dados das regiões
regioes <- data %>%
  distinct(region)
regioes

# Estatísticas para região da América Latina
data %>%
  filter(region == regioes[1,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD), 
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))

# Estatísticas para região da América do Norte
data %>%
  filter(region == regioes[2,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD),
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))

# Estatísticas para região da Europa
data %>%
  filter(region == regioes[3,1]) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD),
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))

# Ou poderíamos usar o group by para obter as estatísticas para cada região diretamente
data %>%
  group_by(region) %>%
  filter(year == 2021) %>%
  summarise(quantidade = n(), 
            media = mean(NY.GDP.PCAP.KD), 
            maximo = max(NY.GDP.PCAP.KD), 
            minimo = min(NY.GDP.PCAP.KD))