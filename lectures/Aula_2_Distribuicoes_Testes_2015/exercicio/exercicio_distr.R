Exercicio poisson

set.seed(34)

x_rand <- rpois(30,5)

x_bias <- seq(-2.9,3,by=0.1)

x <- as.integer(x_rand - x_bias)

mnr <- mean(x_nonrand)

n_ind = sum(x)

#1) Se a pop é distribuida aleatoriamente, qual a probabilidade de cada numero de individuos?

probs <- vector("numeric",30)

probs

for (i in c(1:30)){
  probs[i] <- dpois(x_rand[i],mnr)
 }

probs

esp <- n_ind * probs
