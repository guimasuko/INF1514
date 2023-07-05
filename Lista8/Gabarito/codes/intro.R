library(tidyverse)
library(WDI)

wdi = WDI(indicator = c("total_pop"="SP.POP.TOTL", "urban_pop"="SP.URB.TOTL"), 
          country = c("CA","US","BR","AR","CL","CO","PY","PE",
                      "UY","FR","DE","IT","ES","GB","DK","1W"),
          start=1960,
          end=2020)
View(wdi)