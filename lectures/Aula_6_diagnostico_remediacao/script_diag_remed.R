# Diagnostico e remediaçao de modelos lineares



#Criando dados problemáticos:

#Dado sem problemas:
set.seed(979)
x <- runif(50,0,20)

set.seed(975)
y <- 2.4 + 1.7*x + rnorm(50,0,5)

dado.np <- data.frame(cbind(x,y))

plot(y ~ x, dado.np)

# dado com resíduos não normais

set.seed(3423)
y <- 2.4 + 1.7*x +  rf(50,4,15)

dado.nnorm <- data.frame(cbind(x,y))
plot(y ~ x, dado.nnorm)
plot(residuals(lm(y ~ x, dado.nnorm)))
abline(h=0)
shapiro.test(dado.nnorm$y)

# dado heteroscedastico

set.seed(124)
y <- 2.4 + 1.7*x + rnorm(50,0,1)*0.5*x

dado.heter <- data.frame(cbind(x,y))
plot(y ~ x, dado.heter)
plot(lm(y ~ x, dado.heter))
shapiro.test(dado.heter$y)

# dado correlacionado
keeling <- read.csv('keeling.csv')
plot(interp ~ data.dec, keeling[-c(1:550),])
m <- lm(media ~ data.dec, keeling[-c(1:550),])
abline(m)
plot(predict(m),residuals(m),,type='l')