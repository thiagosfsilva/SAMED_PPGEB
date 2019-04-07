# gera dados simulados de NDVI vs. LAI
# usando a relação em:
# http://www.ias.ac.in/jess/dec2011/1113.pdf

# No artigo, NDVI parece variar entre  0.2 e 0.8
set.seed(1432)
ndvi <- runif(100,0.2,0.8) 
ndvi <- round(ndvi,digits=2)
# a relação ajustada no artigo é:
# y = 0.114exp(4.906x)
# recriamos a expressão

lai.det <- 0.114 * exp(4.906 * ndvi)

# vendo se funcionou
plot(ndvi,lai.det)

# adicionando um erro com variancia inflavel, para que fique normalmente distribuido com a transformação log:

lai = lai.det + lai.det*rnorm(100,0,0.2)

# vendo se funcionou
plot(ndvi,lai)
plot(ndvi,log(lai))
plot(lai,lm(log(lai) ~ ndvi)$residuals)

ndvi.lai <- data.frame(cbind(ndvi,lai))

write.csv(ndvi.lai,file='ndvi_lai.csv',row.names=F)