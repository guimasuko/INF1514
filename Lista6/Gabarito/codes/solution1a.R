library("descr")

file.head("Lista6/Gabarito/data/futuroDI.CSV")

futuroDI <- read.csv("Lista6/Gabarito/data/futuroDI.CSV",
                     dec=".",
                     fileEncoding = "UTF-8-BOM")

View(futuroDI)