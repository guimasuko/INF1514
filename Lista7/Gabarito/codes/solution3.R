# países da amostra
paises <- data %>%
  distinct(country)
paises

# argentina
argentina <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[1,1])

# brazil
brazil <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[2,1])

# canada
canada <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[3,1])

# chile
chile <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[4,1])

# colombia
colombia <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[5,1])

# denmark
denmark <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[6,1])

# france
france <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[7,1])

# germany
germany <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[8,1])

# italy
italy <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[9,1])

# paraguay
paraguay <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[10,1])

# peru
peru <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[11,1])

# spain
spain <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[12,1])

# united kingdom
united_kingdom <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[13,1])

# united states
united_states <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[14,1])

# uruguay
uruguay <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[15,1])

# world
world <- data %>%
  select(country, year, NY.GDP.PCAP.KD) %>%
  filter(country == paises[16,1])