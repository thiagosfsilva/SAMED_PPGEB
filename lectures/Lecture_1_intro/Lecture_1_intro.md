---
author:
- '**Thiago S. F. Silva** - tsfsilva\@rc.unesp.br'
subtitle: Análise Quantitativa de Dados Ambientais
title: 'Aula 1: Estatística e Probabilidade'
---

Outline

Visão Geral do Curso
====================

Funcionamento do Curso

O curso se divide em:

-   ~~Blá, blá, blá, blá~~ **Aulas Teóricas**

-   ~~Brigando com o R~~ **Práticas e Exercícios**

-   ~~Zzzzzzzzzzzzzzz~~ **Discussões de artigos**

Avaliação:

-   **Exercícios:** scripts de análise derivados das aulas práticas

-   **Bootcamp:** maratona de análise de um mini-projeto, em sala

-   **Seus próprios dados ou dados pré-adquiridos, à sua escolha**

Sim, nós temos um plano

-   2015-08-24: Introdução, Probabilidades

-   2015-08-25: Distribuições de Probabilidade

-   2015-08-26: Testes de Hipóteses

-   2015-08-27: Erros Tipo I e Tipo II

-   2015-08-28: Organização de Dados, Análise Exploratória e Gráfica

-   2015-08-31: Modelos Lineares Gerais: Regressão Simples e
    Multivariada

-   2015-09-01: Modelos Lineares Gerais: ANOVA e ANCOVA

-   2015-09-02: Modelos Lineares Gerais: Diagnóstico e Remediação

-   2015-09-03: Bootcamp de Análise de dados

[Plano sujeito à mudanças, sempre.]{.alert}

Apresentações

-   **Thiago Sanna Freire Silva**

-   Departamento de Geografia - IGCE/UNESP

-   tsfsilva\@rc.unesp.br - (19) 3526-9208

<!-- -->

-   Biólogo (UFRN)

-   Mestre em Sensoriamento Remoto (INPE)

-   Doutor em Geografia (UVic - Canadá)

<!-- -->

-   Funcionamento de ecossistemas e mudanças climáticas

-   Dinâmica espaço-temporal de paisagens

-   Interface entre Ecologia, Computação e Geociências

Apresentações

O que é Estatística?
====================

O que é Estatística?

O que é Estatística?

O que a Estatística **não** é:

-   Uma ciência exata

-   Um método único e infalível

-   Um sistema automático de decisão

-   Uma solução para todos os problemas científicos

-   A salvação para uma pesquisa ruim

"To consult the statistician after an experiment is finished is often
merely to ask him to conduct a post mortem examination. He can perhaps
say what the experiment died of". - *Sir* Ronald Fisher.

O que é Estatística?

Matemática vs. Estatística: é a mesma coisa?

Pra que serve a Estatística?

Propósito da Estatística: estimar e quantificar **incertezas**

Incertezas = **probabilidades**

O que é Estatística?

Como podemos quantificar incertezas acerca de alguma coisa?

-   Observações\...

-   Repetições\...

-   Experimentos\...

O que é Estatística?

Por que queremos quantificar incertezas acerca de alguma coisa?

-   Decisão\...

-   Explicação\...

-   Previsão\...

Exemplos

-   Um reservatório tem 60% de chance de eliminar o habitat de uma
    espécie. Mas há 75% de chance de que o investimento dos royalties vá
    garantir a preservação de 500km$^2$ de floresta primária no entorno
    do reservatório. Será que devo autorizar ou vetar a construção desse
    reservatório?

-   Qual a contribuição relativa do regime hidrológico, quantidade de
    nutrientes, e turbidez da água no crescimento de plantas aquáticas
    na Amazônia?

-   Com que grau de certeza posso afirmar que a diversidade irá aumentar
    em 1.5 vezes quando a disponibilidade de nutrientes aumenta em 0.7
    vezes?

Modelagem Estatística
=====================

Modelos

O que é um **modelo**?

![image](C:/Users/thiago/OneDrive/UNESP/Pos_graduacao/Eco/2015/Estatistica_2015/Aulas/Aula_1_Intro_2015/figs/bruno.jpg){width="2in"}

Modelos

$Y = \beta _0 + \beta _1 X$ ?

![image](C:/Users/thiago/OneDrive/UNESP/Pos_graduacao/Eco/2015/Estatistica_2015/Aulas/Aula_1_Intro_2015/figs/landsat8.jpg){width="\textwidth"}

![image](C:/Users/thiago/OneDrive/UNESP/Pos_graduacao/Eco/2015/Estatistica_2015/Aulas/Aula_1_Intro_2015/figs/casa.jpg){width="\textwidth"}

O que é um modelo?

-   Uma representação **simplificada** da realidade

-   Busca descrever alguns aspectos de interesse, ignorando outros

[**"All models are wrong. Some are useful" - George E. P. Box**]{.alert}

### Uma taxonomia de modelos

**Atenção: Essas relações *não* são obrigatórias!**

Probabilidade
=============

Probabilidade

-   A base de toda a estatística

-   Conceitualmente simples...

-   ...mas que rapidamente se torna **bem complexa**.

-   A probabilidade mede as "chances" de um determinado evento ocorrer

*Ex.: Qual a probabilidade de um inseto ser capturado por uma planta
carnívora?*

Probabilidade

Para falar de probabilidade, precisamos definir alguns termos:

-   **Evento ($A$):** um processo probabilístico (Ex.: $A$ = tentativa
    de captura)

-   **Resultado (*outcome, $A_i$*):** resultado observado do evento
    (Ex.: $A_1$ = hove captura)

-   **Espaço (Universo) Amostral ($S = A_i,...,A_n$):** todos os
    resultados possíveis de um evento (Ex: $S_{captura} =$ {Houve
    Captura, Não Houve Captura})

-   Neste exemplo, o espaço amostral é discreto

Probabilidade em 15 minutos

**Axioma 1:** A probabilidade de qualquer evento dentro do espaço
amostral é um número real positivo
$$P(A) \in \mathbb{R}, P(A) \geq 0  \quad \forall A \in S$$

**Axioma 2:** A soma das probabilidades de todos os resultados dentro do
espaço amostral é igual a 1 $$\sum_{i=1}^{n}{P(A_i)= 1}$$

Probabilidade em 15 minutos

**Regra da Subtração:** A probabilidade de observar um determinado
resultado é complementar à probabilidade deste resultado não ser
observado

$$P(A) = 1 - P(A^c)$$

[Ex.:]{.alert} Qual a probabilidade de tirarmos 5 em um dado?

$$P(A) = \frac{1}{6} = 1 - P(A^c) = 1 - \frac{5}{6} = \frac{1}{6}$$

Probabilidade em 15 minutos

**Regra da Multiplicação:** Se dois eventos são **independentes**, a
probabilidade de que os dois ocorram juntos é o da probabilidade de cada
evento (**interseção das probabilidades**, $\cap$)
$$P(A \cap B) = P(A) \times P(B)$$

[Ex.:]{.alert} Qual a probabilidade de tirarmos um 5 ***e*** um 6 em
dois dados?

$$P(A \cap B) = P(A) \times P(B) = \frac{1}{6} \times \frac{1}{6} = \frac{1}{36}$$

Probabilidade em 15 minutos

**Regra da Adição:** Se dois eventos são **mutuamente exclusivos
(disjuntos)**, a probabilidade de que algum deles ocorra é a da
probabilidade de cada evento (**união das probabilidades**, $\cup$)
$$P(A \cup B) = P(A) + P(B)$$

[Ex.:]{.alert} Qual a probabilidade de tirarmos um 5 ***ou*** um 6 em um
dado?

$$P(A \cup B) = P(A) + P(B) = \frac{1}{6} + \frac{1}{6} = \frac{2}{6}$$

Probabilidade em 15 minutos

Se dois eventos **não** são mutuamente exclusivos, usamos:
$P(A \cup B) = P(A) + P(B) - P(A \cap B)

\alert{Ex.:} Qual a probabilidade de sortearmos um 7 ($A$) \textbf{ou} uma carta de espadas ($B$) de um baralho com 52 cartas?

\begin{equation*}
    P(A=7)= \frac{4}{52} = 0.077, P(B = \text{espadas}) = \frac{13}{52} = 0.25
\end{equation*}

\begin{equation*}
    P(A \cup B) = P(A) + P(B) - P(A \cap B) = 0.077 + 0.25 - (0.077 \times 0.25) = 0.308
\end{equation*}

\center{\textbf{Por que subtrair $P(A \cap B)$?}}

\end{frame} 
%===============================================================================%


%===============================================================================
\begin{frame}{Probabilidade em 15 minutos}

\begin{small}

\textbf{Probabilidade condicional:} é a probabilidade de que um evento ocorra, dado que outro evento relacionado \textbf{já ocorreu}:$P(A\|B)
= P(A
B)/P(B)$\alert{Ex.:} Qual a probabilidade de uma carta sorteada ser um 7 ($A$), sabendo que a carta é de espadas ($B$)? 

\begin{equation*}
    P(A=7)= \frac{4}{52} = 0.077, P(B = \text{espadas}) = \frac{13}{52} = 0.25
\end{equation*}

\begin{equation*}
    P(A|B) = \frac{P(A \cap B)}{P(B)} = \frac{0.077 \times 0.25}{0.25} = 0.077
\end{equation*}

\center{\textbf{Se já sabemos que a carta é de espadas, a probabilidade de obter um 7 é 1/13, que equivale a 4/52}}

\end{small}

\end{frame} 
%===============================================================================%



%===============================================================================
\begin{frame}{Probabilidade em 15 minutos}

\textbf{Multiplicação para eventos dependentes:} Se dois eventos são \textbf{dependentes}, a probabilidade de que os dois ocorram juntos pode ser obtida pela relação anterior: 

\begin{equation*}
    P(A|B) = \frac{P(A \cap B)}{P(B)},  \quad P(A \cap B) = P(B) \times P(A|B)
\end{equation*}

\alert{Ex.:} Em Rio Claro, a chance de ser picado por \emph{Aedes egyptii} ($C$) é de 70\% por dia. Assumindo que a chance de um mosquito transmitir o vírus ($T$) é de 50\% , qual a probabilidade de um aluno de estatística pegar dengue hoje?



\end{frame} 
%===============================================================================%


%===============================================================================
\begin{frame}{Probabilidade em 15 minutos}

A probabilida de transmissão é condicional à picada. Se houve picada,$P(A
\| B) = 0.5$. Se não houve picada,$P(A \| B) = 0$.

 
 \begin{equation*}
     P(A \cap B) = P(B) \times P(A | B) 
 \end{equation*}
 
  \begin{equation*}
     P(T \cap C) = P(C) \times P(T | C) = 0.7 \times 0.5 = 0.35
 \end{equation*}
 

\end{frame} 
%===============================================================================%

%===============================================================================
\begin{frame}{Exercício: Gotellli \& Ellison 2$^a$ Ed. Ing. pp. 15-17}

\textbf{Plantas vs. lagartas}

\begin{small}

Em uma paisagem, temos manchas de dois fenótipos de uma planta:$R$é resistente à herbivoria por lagartas, enquanto$R\^c$não é. Os fenótipos nunca ocorrem juntos na mesma mancha, e fenótipos resistentes ocorrem na paisagem com frequência  de 20$%$.

A probabilidade de uma mancha ser invadida por lagartas ($C$) é de 0.7, independente da variedade.
\vfill

Assumindo que as lagartas se dispersam igualmente para todas as manchas, e que somente populações resistentes sobrevivem à chegada das lagartas, qual a probabilidade de que uma mancha desapareça devido à herbivoria? 
\vfill
\alert{\textbf{Dica:}} Primeiro calcule as probabilidades de ocorrência das quatro combinações possíveis de resultados.

\end{small}

\end{frame}
%===============================================================================%

%===============================================================================
\begin{frame}{Exercício: Gotellli \& Ellison 2$^a$ Ed. Ing. pp. 15-17}

\textbf{Primeiro Passo:} organizando as informações:
\vfill
\tqt{Resistente} ou \tqt{suscetível} são resultados mutuamente exclusivos:$P(R)
= 0.2, P(R\^c) = P(1 - R) = 0.8$\vfill
Presença e ausência de lagartas são resultados mutuamente exclusivos:$P(L)
= 0.7, P(L\^c) = P(1 - L) = 0.3$\vfill$S =
{R\^cL\^c,RL\^c,RL,R\^cL,RL}$\end{frame}
%===============================================================================%


%===============================================================================
\begin{frame}{Exercício: Gotellli & Ellison 2nd Ed. Ing. pp. 15-17}

\textbf{Segundo Passo:} Expressando as probabilidades. Resistência e invasão por lagartas são eventos independentes:

\vfill$P(R\^cL\^c) = P(R\^c) P(L\^c)$\vfill$P(RL\^c) = P(R)
P(L\^c)$\vfill$P(R\^cL) = P(R\^c) P(L)$\vfill$P(RL) = P(R) P(L)$\vfill
Multiplicamos porque os eventos são independentes.

\end{frame}
%===============================================================================%

%===============================================================================
\begin{frame}{Exercício: Gotellli \& Ellison 2$^a$ Ed. Ing. pp. 15-17}

\textbf{Terceiro Passo:} Calculando as probabilidades:
\vfill$P(R\^c L\^c) = P(R\^c) P(L\^c) = 0.8 0.3 = 0.24$\vfill$P(R L\^c)
= P(R) P(L\^c) = 0.2 0.3 = 0.06$\vfill$P(R\^c L) = P(R\^c) P(L) = 0.8
0.7 = 0.56$\vfill$P(R L) = P(R) P(L) = 0.2 0.7 = 0.14$\end{frame}
%===============================================================================%

%===============================================================================
\begin{frame}{Exercício: Gotellli \& Ellison 2$^a$ Ed. Ing. pp. 15-17}
\textbf{Quarto Passo:} Combinando as probabilidades:
\begin{small}
\vfill$P(R\^c L\^c) = P(R\^c) P(L\^c) = 0.8 0.3 =
0.24$: Planta permanece
\vfill$P(R L\^c) = P(R) P(L\^c) = 0.2 0.3 = 0.06$: Planta permanece
\vfill$P(R\^c L) = P(R\^c) P(L) = 0.8 0.7 =
0.56$: \textbf{Planta desaparece}
\vfill$P(R L) = P(R) P(L) = 0.2 0.7 = 0.14$: Planta permanece
\vfill
\end{small}$$$P() = P((R\^c L\^c) (R L\^c) (R L)) = 0.44$\end{frame}
%===============================================================================%



%===============================================================================
\begin{frame}{Expandindo o Exercício}

\textbf{Plantas vs. lagartas vs. invasoras}

\begin{small}

Mesmo nos fenótipos resistentes, a herbivoria diminui a capacidade competitiva da planta estudada, facilitando o estabelecimento ($I$) de uma espécie invasora. Se há presença da lagarta, a invasão tem uma taxa de sucesso de 60\%, e se não há plantas, o sucesso é garantido (100\%). 
\vfill
Qual a probilidade de que haja invasão, sabendo que as lagartas já atingiram a mancha?

\end{small}

\end{frame}
%===============================================================================%

%===============================================================================
\begin{frame}{Expandindo o Exercício}

\begin{small}

O primeiro impulso é calcular$P(I L) = P(I\|L)
P(L)$. Mas a herbivoria leva à remoção da planta quando esta não é resistente, modificando a probabilidade de invasão.

Temos, assim, duas probabilidades condicionais:$P(I R\^cL) = P(I\|R\^cL)
P(R\^cL) = 1 0.56 = 0.56$\vfill$P(I RL) = P(I\|RL) P(RL) = 0.6 0.14 =
0.084$\vfill$RL$e$R\^cL$são mutuamente exclusivos, então temos:$P(I L) =
P(I R\^cL) P(I RL) = 0.56 + 0.084 = 0.644$\end{small}

\end{frame}
%===============================================================================%


%===============================================================================
\begin{frame}{Estimando Probabilidades}

\emph{Qual a probabilidade de uma planta carnívora capturar um inseto?}

\begin{itemize}
  \item \textbf{Como podemos estimar essa probabilidade?} \pause
  \vfill
  \item Realizando uma \textbf{contagem} dos sucessos e fracassos da planta, para várias visitas de insetos.\pause
  \vfill
  \item Cada visita individual é uma \textbf{realização} do evento: capturado ou não. Também conhecida como \textbf{réplica} ou \textbf{observação}.\pause
  \vfill
  \item O conjunto de realizações sucessivas compreende um \textbf{experimento}.
\end{itemize}

\end{frame} 
%===============================================================================%


%===============================================================================
\begin{frame}{Frequência vs. Probabilidade}

\begin{centering}

\textbf{Frequência de Captura:}

\begin{equation*}
    F  = \frac{\text{número de capturas}}{\text{número de visitas}}
\end{equation*}


\end{centering}

\end{frame} 
%===============================================================================%


%===============================================================================
\begin{frame}{Frequência vs. Probabilidade}

\begin{centering}

\textbf{Frequência de Captura:}

\begin{equation*}
    F = \frac{\text{número de sucessos}}{\text{número de realizações}}
\end{equation*}


\end{centering}

\end{frame} 
%===============================================================================%


%===============================================================================
\begin{frame}{Frequência vs. Probabilidade}

\begin{centering}

\textbf{Probabilidade de Captura:}

\begin{equation*}
    P(\text{captura}) \approx \lim_{n_t \to \infty} \frac{\text{número de sucessos} (n_r)}{\text{número de realizações } (n_t)}
\end{equation*}

\end{centering}

\end{frame} 
%===============================================================================%

%===============================================================================%
\begin{frame}{Culturas Estatísticas}

\textbf{Estatística Frequentista:}

\begin{itemize}

  \item Associada principalmente a \emph{Sir} Ronald Aymer Fisher, FRS.
\vfill
  \item Se baseia na associação entre frequências e probabilidades.
\vfill
  \item Ex: Jogo uma moeda 100 vezes, obtenho 45 caras e 55 coroas. Estimo minhas probabilidades como 0.45 e 0.55
\vfill
  \item Vê a amostra como uma realização aleatória de um evento
\vfill
  \item Parte do princípio de que se o processo fosse repetido infinitamente, seria possivel estimar as probabilidades associadas aos resultados do evento
  
\end{itemize}
 
\end{frame}
%===============================================================================%


%===============================================================================%
\begin{frame}{Culturas Estatísticas}

\begin{centering}$p \< 0.05$? \pause
\vfill$P(A\|H)$ou$P(H\|A)$? \pause
\vfill
  É a mesma coisa?

\end{centering}
 
\end{frame}
%===============================================================================%



%===============================================================================%
\begin{frame}{Culturas Estatísticas}

\begin{small}

Na visão frequentista, se avalia a probabilidade de se obter a amostra observada, dada uma determinada hipótese:

\begin{equation*}
P(A|H)
\end{equation*}

\alert{Ex:} Joguei uma moeda 100 vezes, e obtive 65 caras e 35 coroas. Se a minha hipótese é de que a moeda é honesta ($P()
= P() =
0.5$), qual chance de eu obter esse resultado, \textbf{ou um resultado mais extremo}?

\begin{equation*}
p =\ensuremath{8.6\times 10^{-4}}
\end{equation*}

Se eu repetir esse experimento infinitas vezes (jogar 100 moedas), vou encontrar um resultado igual ou mais extremo 0.086\% das vezes.

\end{small} 
 
\end{frame}
%===============================================================================%

%===============================================================================%
\begin{frame}{Culturas Estatísticas}

A lógica nos diz que o mais importante é saber$P(H\|S)$. Mas como? \pause

\centering{\textbf{Teorema de Bayes:}}

\begin{equation*}
P(H \mid A) = \frac{P(H \cap A)}{P(A)} =\frac{P(A \mid H) \times P(H)}{P(A)}
\end{equation*}$P(A \|
H)$: probabilidade da amostra se a hipótese é verdadeira$P(A)$: probabilidade da amostra, garante que$0
P(H \| A)$\leq 1$

$\mathbf{P(H)}$: probabilidade da hipótese ser verdadeira. Conhecida
como **priori (prior)**.

Culturas Estatísticas

**Estatística Bayesiana**

-   Associada a Thomas Bayes

-   Na visão bayesiana, a análise estatística serve para o conhecimento
    anterior

-   O conhecimento prévio pode ser usado para definir uma probabilidade
    *priori* da hipótese ser verdadeira

-   O resultado do experimento permite que voce atualize (melhore) essa
    estimativa de probabilidade, com base na amostra observada.

Estatística Bayesiana

[Ex.:]{.alert} Joguei uma moeda 100 vezes, e obtive 65 caras e 35
coroas. Se a minha hipótese é de que a moeda é honesta
($P(\text{cara}) = P(\text{coroa}) = 0.5$), qual a probabilidade que
essa hipótese esteja correta?

$H_0$: A moeda é honesta

$H_1$: A moeda é tendenciosa

Baseado em meu conhecimento de moedas, eu poderia dizer que a
probabilidade dela ser honesta é 0.9 ($P(H_0) = 0.9$), e a probabilidade
dela ser tendenciosa é 0.1 ($P(H_1) = 0.1$).

Estatística Bayesiana

Para H$_0$:

$$P(H_0|A) = \frac{P(A|H_0) \times P(H_0)}{P(A)}$$

$$P(H_0 | A) = \frac{P(A | H_0) \times P(H_0)}{P(A | H_0) \times P(H_0) + P(A | H_1) \times P(H_1)}$$

$$P(H_0 | A) = \frac{P(\ensuremath{8.6\times 10^{-4}})P(0.9)}{\ensuremath{8.6\times 10^{-4}}\times 0.9 +0.0834 \times 0.1}$$

$P(H_0|A) = 0.085$

Estatística Bayesiana

Para H$_1$:

$$P(H_1 | A) = \frac{P(A | H_1) \times P(H_1)}{P(A)}$$

$$P(H_1 | A) = \frac{P(A | H_1) \times P(H_1)}{P(A | H_1) \times P(H_1) + P(A | H_0) \times P(H_0)}$$

$$P(H_0 | A) = \frac{P(0.0834) \times P(0.1)}{0.0834 \times 0.1 +\ensuremath{8.6\times 10^{-4}} \times 0.9}$$

$P(H_1|A) = 0.915$

Estatística Bayesiana

A escolha da *priori* afeta fortememente a *posteriori*:

$\mathbf{P(H_0=0.5),P(H_1=0.5)} \rightarrow P(H_0|S) = 0.01, P(H_1|S) = 0.98$

$\mathbf{P(H_0=0.75),P(H_1=0.25)} \rightarrow P(H_0|S) = 0.03 , P(H_1|S) = 0.97$

$\mathbf{P(H_0=0.95),P(H_1=0.05)} \rightarrow P(H_0|S) = 0.16, P(H_1|S) = 0.84$

$\mathbf{P(H_0=0.99),P(H_1=0.01)} \rightarrow P(H_0S) = 0.506, P(H_1|S) = 0.494$

Frequentista vs. Bayesiana

**Bayesianos sobre frequentistas:**

-   Ignoram qualquer informação a priori

-   Se baseiam em experimentos fictícios

**Frequentistas sobre Bayesianos:**

-   Podem gerar o resultado que quiserem manipulando as *priori*

![image](C:/Users/thiago/OneDrive/UNESP/Pos_graduacao/Eco/2015/Estatistica_2015/Aulas/Aula_1_Intro_2015/figs/frequentists_vs_bayesians.png){width="2in"}

Qual vamos usar?

**O Curso se baseará na filosofia frequentista.**

-   Mais frequentemente usada (*tu-dum psh*).

-   Mais familiar à comunidade ecológico-científica.

-   É a estatística com a qual voces já tiveram algum contato prévio.

-   É a que eu sei ensinar.

**Contudo, tomaremos cuidado em enfatizar os maus usos e compreensões
equivocadas da estatística frequentista.**

Por que usar R?

**R:** Software para análise e programação estatística - **Uso
obrigatório no curso**.

-   Livre, gratuito, tem se tornado "padrão" para análise de dados

-   Difícil no início, mas o tempo é recuperado depois

-   Programação = liberdade

-   Todos os exercícios do curso devem ser feitos em R

-   Assume-se que todos tenham instalado o R 3.1.3 e a interface
    RStudio.

![image](C:/Users/thiago/OneDrive/UNESP/Pos_graduacao/Eco/2015/Estatistica_2015/Aulas/Aula_1_Intro_2015/figs/crybaby.jpg){width="1.5in"}

http://www.jillgreenberg.com/
