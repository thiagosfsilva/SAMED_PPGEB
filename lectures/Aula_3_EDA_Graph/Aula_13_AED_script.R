# Códigos da aula 14 - EDA

# Exemplos de falsos bons e maus modelos

# dois clusters independentes
set.seed(765)

# x e uma combinacao de duas variaveis normais, uma com media 5, outra com media 30,
# ambas com desvio padrao 1
x <- c(rnorm(20,5,1), rnorm(20,30,1))

# y e a soma de x com uma variavel normal com media zero e desvio padrao 3
y <- x + rnorm(40,0,3)

# ajustamos o modelo e jogamos os resultados dentro de m1
m1 <- lm(y ~ x)

# sumario dos resultados do modelo
summary(m1)

# Visualizando os resultados: ops!
plot(x,y)
abline(m1,col="red")

# Agora o contrario:

# x e uma variavel aleatoria uniformemente distribuida entre -20 e 20
x2 <- runif(50,-20,20)

# y e uma funcao linear de x, mas com um termo que multiplica x ao quadrado
y2 <- 2 + 3*x2 + (2*x2^2) + rnorm(50,0,3)

# ajuste do modelo: uma porcaria
m2 <- lm(y2 ~ x2)
summary(m2)

#Analise grafica: ops x 2!
plot(x2,y2)
abline(m1,col="red")

# O Quarteto de Anscombe

# Os dados originais de anscombe já existem dentro do R
data(anscombe)

#modelos 1 a 4
m1 <- lm(y1 ~ x1, data = anscombe)
m2 <- lm(y2 ~ x2, data = anscombe)
m3 <- lm(y3 ~ x3, data = anscombe)
m4 <- lm(y4 ~ x4, data = anscombe)

#comparando os coeficientes
m1$coefficients
m2$coefficients
m3$coefficients
m4$coefficients

# Os plots de cada modelo
plot(anscombe$x1,anscombe$y1)
abline(m1)

plot(anscombe$x2,anscombe$y2)
abline(m2)

plot(anscombe$x3,anscombe$y3)
abline(m3)

plot(anscombe$x4,anscombe$y4)
abline(m4)


### Medidas paramétricas de distribuição central
set.seed(1979)

# gera uma amostra de 500 valores, de uma distribuição normal com média 50 e desvio padrao 10.
# veja que isso substitui a variavel x usada nos exemplos anteriores
x <- rnorm(500,50,10)

# criando a função para o coeficiente de variância
cv <- function(x) sd(x)/mean(x) * 100

#calculando as estatisticas descritivas para x

mean(x)

sd(x)

cv(x)

#plotando a distribuição e as estatísticas

# historgrama
hist(x,breaks=40,prob=T,xlim=c(0,100),col='gray70')

# curva normal com os parametros da população
curve(dnorm(x,mean=50, sd=10), add=T)

# o uso de abline com o parametro "v= " traça uma linha vertical no valor dado pra "v"no eixo x
abline(v=mean(x),col='red')

# mais de um valor de v pode ser dado ao mesmo tempo, e esses valor podem ser calculados no ato
# linhas para média + e - um desvio padrão
abline(v=c(mean(x)+sd(x),mean(x)-sd(x)),col='blue')
# linhas para média + e - dois desvios padrão
abline(v=c(mean(x)+2*sd(x),mean(x)-2*sd(x)),col='purple')


# Repetindo os passos acima, mas aumentanbdo a variancia (desvio padrao) de x
x <- rnorm(500,50,20)

mean(x)
sd(x)
cv(x)

hist(x,breaks=40,prob=T,xlim=c(0,100),col='gray70')
curve(dnorm(x,mean=50, sd=20), add=T)
abline(v=mean(x),col='red')
abline(v=c(mean(x)+sd(x),mean(x)-sd(x)),col='blue')
abline(v=c(mean(x)+2*sd(x),mean(x)-2*sd(x)),col='purple')

#Calculando os quantis

#mediana
median(x)

#mediana 
quantile(x,prob=0.5)

# quartis
quantile(x,prob=c(0.25,0.75))

# plotando a mediana e os quartis sobre a distribuição
hist(x,breaks=40,prob=T,xlim=c(0,100),col='gray70')
curve(dnorm(x,mean=50, sd=20), add=T)
abline(v=median(x),col='red',lwd=2,lty=2)
abline(v=quantile(x,prob=c(0.25,0.75)),col='blue',lwd=2,lty=2)

# plotando as estatisticas descritivas paramétricas e não paramétricas juntas
hist(x,breaks=40,prob=T,xlim=c(0,100),col='gray70')
curve(dnorm(x,mean=50, sd=20), add=T)
#media
abline(v=mean(x),col='red',lwd=2,lty=1)
#mediana
abline(v=median(x),col='red',lwd=2,lty=2)
# media + ou - um desvio
abline(v=c(mean(x)+sd(x),mean(x)-sd(x)),col='blue',lwd=2,lty=1)
# quartis
abline(v=quantile(x,prob=c(0.25,0.75)),col='purple',lwd=2,lty=2)
# quantis correspondentes a media + ou - um desvio (approx. 68%)
# 100 - 68 = 32 : 32% devem ficar "pra fora" dos quantis
# 32/2 = 16: ou seja, 16% pra cada lado
# 100-16 = 84
# 0 + 16 = 16
abline(v=quantile(x,prob=c(0.16,0.84)),col='blue',lwd=2,lty=2)

# As estatisticas parametricas e não-parametricas divergem bastante para distribuições assimétricas

# x agora tem uma distribuição geométrica, com p = 0.1
x <- rgeom(500,0.1)

mean(x)
median(x)

sd(x)
quantile(x,probs=c(0.16,0.84))

# visualmente:
hist(x,breaks=30,prob=T,col='gray70')
abline(v=mean(x),col='red',lwd=2,lty=1)
abline(v=median(x),col='red',lwd=2,lty=2)
abline(v=c(mean(x)+sd(x),mean(x)-sd(x)),col='blue',lwd=2,lty=1)
abline(v=quantile(x,prob=c(0.25,0.75)),col='purple',lwd=2,lty=2)
abline(v=quantile(x,prob=c(0.16,0.84)),col='blue',lwd=2,lty=2)


# Mostrando a robustez dos quantis à outliers

x <- c(1,2,3,2,3,4,5,6,2,3,5,4,1,2,3,4,5,5,6,70)

mean(x)
median(x)

hist(x,breaks=40,prob=T,,col='gray70')
abline(v=mean(x),col='red',lwd=2,lty=1)
abline(v=median(x),col='red',lwd=2,lty=2)
abline(v=c(mean(x)+sd(x),mean(x)-sd(x)),col='blue',lwd=2,lty=1)
abline(v=quantile(x,prob=c(0.25,0.75)),col='purple',lwd=2,lty=2)
abline(v=quantile(x,prob=c(0.16,0.84)),col='blue',lwd=2,lty=2)


# Tabulando dados categóricos

#criando tabela de dados
iluvstats <- data.frame(gosto=factor(c("Sim","Não","Não","Não","Não","Não","Não", "Sim", "Sim")))
                        
iluvstats

# compilando as proporções
contagem <- table(iluvstats)

freq <- contagem/9
freq

perc <- freq * 100
perc

odds <- c(contagem[1]/contagem[2],contagem[2]/contagem[1])


#criando nova tabela de dados
iluvstats2 <- data.frame(gosto=ordered(c(5,1,1,1,2,2,3,3,4)))
levels(iluvstats2$gosto) <- c("Abomino","Odeio","Não Gosto","Tolero","adoro")


iluvstats2

# compilando as proporções
contagem2 <- table(iluvstats2)
contagem2

freq2 <- contagem2/9
freq2

perc2 <- freq2 * 100
perc2


### Tipos de gráficos

# Carrega dados de retroespalhamento, alterar caminho para a pasta onde voce copiou esses dados
load('C:/Users/Thiago Silva/Dropbox/EstatisticaINPE/Aula_2_EDA/backscattering.Rdata')

# Criando um subconjunto de dados para plotar
# a expressao após bs seleciona so observações do modo S1, com polarização HH, 
# da classe "floresta inundavel", e da data "20011-07-06"
plot.data <- subset(bs,bs$modo=='S1' & bs$pol=='HH'& bs$classe=='floresta_inundavel'& bs$data=='2011-07-06')

# histograma  
hist(plot.data$sigma0)

# aumentando o numero de divisões para 40
hist(plot.data$sigma0,breaks=40)

# aumentando o numero de divisoes para 100
hist(plot.data$sigma0,breaks=100)

#plotando os dados com uma transformação logaritmica (dB)
hist(10*log10(plot.data$sigma0),breaks=30)

# Mesmo que o anterior, com escala de densidade
hist(10*log10(plot.data$sigma0),breaks=30,prob=T)

# Gráfico final "embelezado"
hist(10*log10(plot.data$sigma0),breaks=30,prob=T, col='gray70',xlab="Retroespalhamento",ylab="Densidade",main=NA)


# grafico de densidade kernel

#default
plot(density(plot.data$sigma0))

# diminuindo a largura de banda (suavizacao), e omitindo o titulo
plot(density(plot.data$sigma0, bw = 0.04),main=NA)

# aumentando a largura de banda (suavizacao), e omitindo o titulo
plot(density(plot.data$sigma0, bw = 0.08),main=NA)

# dados transformados para dB
plot(density(10*log10(plot.data$sigma0)),main=NA)

# aumentando a largura de banda (suavizacao)
plot(density(10*log10(plot.data$sigma0), bw=1),main=NA)



# grafico de barras

# dados binarios
barplot(contagem)

# dados binarios, estendendo a escala em y
barplot(contagem,ylim=c(0,10))

# em horizontal
barplot(contagem,xlim=c(0,10),horiz=TRUE)

# dados ordinais
barplot(contagem2, ylim=c(0,10))

# Grafico inapropriado para valores pontuais

#cria um novo subset dos dados de retroespalhamento, desta vez com todas as classes
plot.data <- subset(bs,bs$modo=='S1' & bs$pol=='HH' & bs$data=='2011-07-06')

# calcula a media por classe
mean.bs <- tapply(plot.data$sigma0,plot.data$classe,mean,na.rm=T)

# expande as margens do grafico pra caber a legenda
par(mar=c(10, 5, 2, 2))

#plot das medias usando barras
barplot(mean.bs,las=2,ylab="Retroespalhamento Médio")



# Barras empilhadas

# carrega dados ambientais. Modifique o caminho para a pasta onde voce copious os dados
load('C:/Users/Thiago Silva/Dropbox/EstatisticaINPE/Aula_2_EDA/rich+env_jun.Rdata')

# seleciona so a granulometria
granulo <- rich.env.jun[,34:40]

# transforma de data.frame para uma matriz simples, e transpõe
granulo <- t(as.matrix(granulo))

# expande as margens do grafico pra caber a legenda
par(mar=c(5.1, 4.1, 5, 3), xpd=TRUE)
# plot 
barplot(granulo,col=rainbow(7),legend=T,args.legend = list(x="top", inset=c(0,-0.4),ncol=3,cex=0.8))

