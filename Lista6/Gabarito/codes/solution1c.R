file.head("Lista6/Gabarito/data/ibov.CSV")

ibov <- read.csv("Lista6/Gabarito/data/ibov.CSV",
                 dec=".",
                 fileEncoding = "UTF-8-BOM")

View(ibov)