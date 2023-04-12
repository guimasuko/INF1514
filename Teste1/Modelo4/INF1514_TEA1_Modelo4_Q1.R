investimento <- 5000
fluxo <- 2500
taxa <- 0.04

valor <- (fluxo / (1 + taxa)) + (fluxo / (1 + taxa)^2) - investimento
print (valor)