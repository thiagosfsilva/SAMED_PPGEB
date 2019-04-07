# Simulate wide data
# Temperature and pH of 30 lakes in 4 regions, for two seasons

library(ggplot2)

library(reshape2)

setwd('C:/Users/Thiago Silva/SkyDrive/UNESP/Pos_graduacao/Eco/Aulas//Aula_2_EDA_Graph')

long.lake <- read.csv('lakedata_long.csv')

wide.lake <- reshape(long.lake, , idvar='Lago',timevar=c('Estacao','Regiao'),direction='wide')
