file.head("Lista6/Gabarito/data/ipca.CSV")

ipca <- read.csv("Lista6/Gabarito/data/ipca.CSV",
                 dec=".",
                 fileEncoding = "UTF-8-BOM")

View(ipca)