# Extrai subsets de amostras de dados de radar
library(plyr)


load('C:/Users/Thiago Silva/Documents/Publications/2013_XVI_SBSR/Luiz/bs_completo.Rdata')

ind <- which(bs$db == -Inf)

bs$db[ind] <- NA

levels(bs$classe)

levels(bs$classe) <- c("agua_macrofita","agua", "agua_solo", "floresta_inundavel", "floresta_terrafirme", "macrofitas_emergentes", "macrofitas_flutuantes", "solo", "arbustos_inundaveis")

ind <- which(bs$classe == "agua_macrofita" | bs$classe == "agua_solo") 

bs_short <- bs[-ind,]

bs_short <- bs_short[,-(7:8)]

bs_sub <- subset(bs_short,bs_short$modo=="S1" | bs_short$modo=="SCNA" | bs_short$modo=="SCN")

bs_sub$modo <- factor(bs_sub$modo)

bs_sub$pol <- factor(bs_sub$pol)

bs_sub$classe <- factor(bs_sub$classe)

# pegando duas datas S1 = 2011-07-06 e 2011-11-03, SCNA 2011-06-29, 2011-10-27, SCN = 2011-06-20, 2011-10-19

bs_sub = subset(bs_sub,bs_sub$data == '2011-07-06' | bs_sub$data == '2011-11-03' | bs_sub$data == '2011-06-29' | bs_sub$data == '2011-10-27' | bs_sub$data == '2011-06-20' | bs_sub$data == '2011-10-19')

summary(bs_sub)

# n para cada categoria
ddply(bs_sub, .(sens,modo,pol,classe,data), summarize, n = length(sigma0))

#subsampling

bs_resamp <- ddply(bs_sub, .(sens,modo,pol,classe,data), summarize, sigma0 = sample(sigma0,100))

# n para cada categoria
ddply(bs_sub, .(sens,modo,pol,classe,data), summarize, n = length(sigma0))

library(ggplot2)

ggplot(subset(bs_resamp,bs_resamp$sens=='R2' & bs_resamp$modo=='S1' & bs_resamp$pol=='HH'),aes(classe,sigma0)) + geom_boxplot()

bs <- bs_resamp 

save(bs, file="backscattering.Rdata")

write.csv(bs,file='backscattering.csv')

# criando arquivos long

R2_S1_2011_11_03 <- subset(bs,bs$modo == 'S1' & bs$data == '2011-11-03')

R2_S1_2011_11_03$int <- interaction(R2_S1_2011_11_03$classe,R2_S1_2011_11_03$pol)

R2_S1_2011_11_03 <- R2_S1_2011_11_03[,c(6,7)]

# tabela wide

R2_S1_2011_11_03_w <- unstack(R2_S1_2011_11_03)

write.csv(R2_S1_2011_11_03_w,file='R2_S1_2011_11_03.csv')

save(R2_S1_2011_11_03_w,file='R2_S1_2011_11_03.Rdata')

library(xtable)

R2_w_xtable <- xtable(R2_S1_2011_11_03_w[1:6,1:9])

R2_l_xtable <- xtable(subset(bs,modo == 'S1' & data == '2011-11-03')[c(1,2,3,101,102,103,201,202,203,701,702,703,801,802,803,901,902,903),c(3,4,6)])

set.seed(1979)
x.norm <- rnorm(200,50,2)

g.mean <- function(x) exp(mean(log(x)))

h.mean <- function(x) ((1/length(x))*(mean(1/x)))^-1 

hist(x.norm)
abline(v=mean(x.norm),col='red')
abline(v=g.mean(x.norm),col='blue')
abline(v=h.mean(x.norm),col='green')

set.seed(1979)
mean(rgamma(200,0.23,0.85))