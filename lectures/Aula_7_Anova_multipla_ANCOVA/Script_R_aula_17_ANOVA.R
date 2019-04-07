# Scripts para demonstração de ANOVA

# Comparação entre SST, SSR e SSE

# Dados
set.seed(1979)
x <- runif(20,0,50)
y <- 2 + 3*x + rnorm(20,0,20)

m <-lm(y ~ x)

m

summary(m)

names(m)

ybar <- mean(y)
ypred <- m$fitted.values# predict calcula os valores de Y_hat para cada nivel de x no modelo


# Plot de SQT
plot(x,y,pch=19)
abline(h=ybar,lty=2,lwd=2)
segments(x0=x,y0=y,x1=x,y1=ybar,col='black',lwd=2)
text(x=10,y=150,label=expression(paste("SQT = ", sum((Y[i] - bar(Y))^2)," = 41202")),cex=1.5,col='black')

# Plot de SQE
plot(x,y,pch=19)
abline(m,lty=1,lwd=2)
segments(x0=x,y0=y,x1=x,y1=ypred,col='blue',lwd=2)
text(x=10,y=150,label=expression(paste("SQE = ",sum((Y[i] - hat(Y[i]))^2)," = 6662")),cex=1.5,col='blue')

# Plot de SQR
plot(x,y,pch=19)
abline(m,lty=1,lwd=2)
abline(h=ybar,lty=2,lwd=2)
segments(x0=x,y0=ypred,x1=x,y1=ybar,col='red',lwd=2)
text(x=10,y=150,label=expression(paste("SSR = ",sum((hat(Y[i]) - bar(Y))^2)," = 34539")),cex=1.5,col='red')

# Calculando manualmente pra ver se bate:

sqe <- sum((y-ypred)^2)
sqe

sqr <- sum((ypred - ybar)^2)
sqr

sqt <- sum((y - ybar)^2)
sqt

sqr + sqe

# Uma outra propriedade interessante é que SQR pode ser calculada a partir de b1 e X

b1 <- m$coefficients[2]
xbar <- mean(x)
sqx <- sum((x-xbar)^2)

sqr2 <- (b1^2)*sqx
sqr2
sqr


# Lembrando, a média de Y_hat é igual á media de Y_i, porque os residuos tem media zero

mean(y)
mean(ypred)


# Exemplo de ANOVA

# Flowering data from gotelli
# per = duração do período de floração
# trat = tratamento:
#   C1 plot sem manipulação
#   C2 Plot com aparato de aquecimento desligado
#   T tratamento com aquecimento

flow <- data.frame(per = c(10,12,12,13,9,11,11,12,12,13,15,16),trat = factor(c("C1","C1","C1","C1","C2","C2","C2","C2","T","T","T","T")))

boxplot(per ~ trat, flow)

# Utilizamos o mesmo comendo lm(), porque a ANOVA também é um modelo linear

m <- lm(per ~ trat,flow)

summary(m)

m2 <- aov(per ~ trat,flow)

# Mangrove data

mangue <- read.table('SpongeContrastData.txt',sep=" ",header=T)
names(mangue) <- c("trat","cresc")

# Pergunta: existe uma relação mutualística entre Rizophora mangle e espécies de esponja?
# Hipótese: a presença de esponjas favorece o crescimento radicular
# Dados:
# cresc = crescimento radicular em mm/dia
# trat =  tratamento:
#   Control: condições naturais
#   Foam: espuma artificial
#   Tedania: enxerto da esponja Tedania ignis
#   Haliclona; enxerto da esponja Haliclona implexiformis

#Explorando os dados:

boxplot(cresc ~ trat,mangue)

tapply(mangue$cresc,mangue$trat,mean)

# A princípio, tanto as naturais quanto artificiais 
# aumentam o crescimento, e Tedania aumentamais que todos

# Anova:

m1 <- lm(cresc ~ trat,mangue)

summary(m1)

anova(m1)

m2 <- aov(cresc ~ trat,mangue)

summary(m2)

m2

names(m1)

names(m2)

# Existe diferença significativa...mas entre quais tratamentos?

TukeyHSD(m2)

contrasts(mangue$trat) # contrastes originais

# Será que esponjas tem um efeito diferente de espuma artificial?

mangue2 <- mangue

cont1 <- matrix(c(0,2,-1,-1))
contrasts(mangue2$trat)
contrasts(mangue2$trat) <- cont1
m3 <- aov(cresc ~ trat, mangue2)

summary(m2)
summary(m3)
summary(m3,split=list(trat=list("Natural vs. Artificial"=1)))

mangue
c1 <- c(rep(0,14),rep(2,14),rep(-1,28))
c2 <- c(rep(3,14),rep(-1,42))
c3 <- c(rep(0,28),rep(1,14),rep(-1,14))
mangue$c1 <- c1
mangue$c2 <- c2
mangue$c3 <- c3

mangue

summary(lm(cresc ~ c1 + c2 + c3,mangue))        

mangue$c1 <- c1
