# Exercicio 1 - estatistica.
# Solucao
# 31/08/2015 - Thiago Sanna Freire Silva

# 1) Importando e arrumando os dados

data(mtcars)

summary(mtcars)

str(mtcars)

head(mtcars,3)

tail(mtcars,3)

names(mtcars)

row.names(mtcars)

# Transforma nome do carro em variável

mtcars$model <- factor(row.names(mtcars))

str(mtcars)

mtcars$am <- factor(mtcars$am)

mtcars$vs <- factor(mtcars$vs)

str(mtcars)

levels(mtcars$am)

levels(mtcars$am) <- c("automatic","manual")

levels(mtcars$am)

head(mtcars)

levels(mtcars$vs) <- c("V","S")

# 2) Exercicio

# Pergunta 1
# Resposta: A classe é data.frame. Uma matriz de dados similar a uma tabela, mas aceita colunas de formatos diferentes, e nomes de variaveis (colunas) e de observacoes (linhas). E a unidade mais basica para armazenamento e analise dos dados.
class(mtcars)

# Pergunta 2
# Resposta: 32 observaçoes de 12 variáveis, 9 numericas e 3 categoricas.
dim(mtcars)
str(mtcars)

#Pergunta 3
#Respostas:
summary(mtcars)

#Pergunta 4
# Resposta:

apply(mtcars[,-c(8,9,12)],2,sd)

#Pergunta 5:
# Resposta:

# coeficiente de variação = DP/Media

cv <- function(x) sd(x)/mean(x)*100

apply(mtcars[,-c(8,9,12)],2,cv)

#Pergunta 6:
# Resposta:

apply(mtcars[,-c(8,9,12)],2,quantile,probs=c(0.25,0.5,0.75))

summary(mtcars)

#Pergunta 7:
#Resposta:

hist(mtcars$disp,breaks=10)

hist(mtcars$mpg,breaks=10)

hist(mtcars$qsec)

plot(density(mtcars$disp,bw=40))

plot(density(mtcars$mpg, bw=1.5))

plot(density(mtcars$qsec, bw=0.7))

#Pergunta 8:
# Resposta:

barplot(mtcars$carb) # nao e isso

table(mtcars$carb)

barplot(table(mtcars$carb))

barplot(table(mtcars$cyl))

#Pergunta 9:
# Como qsec e mpg estao relacionados com hp

plot(mtcars$hp,mtcars$qsec)
plot(qsec~hp,data=mtcars)

plot(mtcars$hp,mtcars$mpg)

#Pergunta 10:

boxplot(hp ~ cyl,data=mtcars)

boxplot(hp ~ gear,data=mtcars)

#Pergunta 11:

library(ggplot2)

ggplot(mtcars,aes(hp,qsec)) + geom_point(aes(color=wt),size=5) + xlab("Potência (hp)") + ylab("Tempo em 1/4 de milha (seg)") + scale_color_continuous(name="Peso\n(libras/1000)")

#Pergunta 12:

mtcars$pp <- mtcars$wt/mtcars$hp

plot(mtcars$pp,mtcars$qsec)

#Pergunta 13:

mtcars[mtcars$pp > 0.05,]
