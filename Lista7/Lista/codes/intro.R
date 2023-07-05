install.packages('WDI')
library(WDI)

help(WDI)

data = WDI(indicator='NY.GDP.PCAP.KD', 
           country=c('CA','US','BR','AR','CL','CO','PY','PE',
                     'UY','FR','DE','IT','ES','GB','DK','1W'), 
           extra = TRUE,
           start=1960, 
           end=2021)
View(data)