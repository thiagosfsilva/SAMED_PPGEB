### Statistical Analysis and Modelling of Ecological Data 

Course Planning



### Main premises of the course:

- Statistics is philosophy of science translated into math
- There is no single, true statistical method for any given problem
- Statistics is about expressing belief and/or uncertainty in the form of **models**
  - Even if you're just calculating a mean, your building a are (very simple) statistical model
- In ecology, **effect size** is everything. Yes/no decisions are of rare and limited interest.



#### Part 1: Thinking statistically

- **Lecture 1** : "*If you're doing statistics without philosophy, you're doing it wrong (McGill)*"

  - Basic principles of the philosophy and epistemology of science:

    - What is knowledge and uncertainty?
    - Inference: induction, deduction, abduction
    - The philosophies that shaped our modern view: Popper, Khun, etc.

  - Why do we care about statistics?

    - Statistics = quantifying uncertainty
    - "Statistics" is not a single thing
      - Most people act as if statistics is a unique, perfectly correct and unquestionable set of methods, i.e. a series of dogmas. It is not, it is a science, with alternative ways to do things, and debates about it.
    - The frequentist view: converging on the hidden truth
    - The Bayesian view: updating your beliefs
      - Objective Bayesianism (Jeffrey) and subjective bayesianism (de Finetti)

  - Everything is a model: assessing uncertainty by comparing and updating models

    - What is a model?

    - Why use models?

    - Any statistic is a model

    - Model comparison: a common ground between frequentists and Bayesians?

      ​

- **Lecture 2** : *"Absence of evidence is not evidence of absence (proverb)"*

  - Using probabilities to represent uncertainties (or certainties)

  - The deceptively simple rules of probability

  - Random variables and probability distributions

    - Why define a probability distribution? Because they have know properties!
      - Expectation, variance, support
    - We don't  *find* the distribution of data, we *assign* it
    - How to use distributions to model problems



  - - Simulating probabilistic outcomes
    - From the distribution of data to the distribution of a *parameter* 
    - Combining distributions to simulate complex processes

    ​

- **Lecture 3** : *"All models are wrong, some are useful (Box)"* 

  - From simulation to fitting: when the data comes first
    - What does it mean to *fit* a model?
      - Fitting parameters
      - Estimating uncertainty
    - Analytic solutions: once they were all we had
  - Maximum Likelihood: the probabilities that are not probabilities
  - Randomization and resampling:  let the data speak
    - Jacknife and Bootstrap: something from nothing

    - Monte Carlo methods in general

      ​

- **Lecture 4**: "Judgment is not invited (Gigerenzer)" 


  - What is a hypothesis?
  - What does it mean to test hypotheses?
  - Do we always need a hypothesis?
  - Popper, Platt
  - Hypotheses as models

    - Hypotheses in the frequentist view

      - What is a p-value? What does it measure?
      - The cult of significance
      - The null is meaningless without an alternative, since "not null" means "anything else"
      - Absence of evidence is not evidence of absence. Failing to reject the null does not mean accepting it as true (otherwise you might as well calculate *p* for the alternative and run with it)
      - the traditional frequentist approach makes sense for controlled experiments, but most ecology is observational, so there is no true decision. We are then more interested in estimating effect sizes that in making yes/no decisions.
  - A problem of unimportant, uninformative hypotheses

    - The Earth is round, p <0.05, Is there a difference, mindless statistics, the difference between significant and non significant results is not significant
- Improving frequentist hypothesis testing
  - Make specific predictions
  - Do you homework before the experiment - define your sig, power, and estimate your N beforehand.
  - Refrain from two-tailed tests. Sure if you have a decent question you at least expect a **direction** for the effect?
- A non-hypothetical frequentist approach: parameter uncertainty and exact p-values
- Hypotheses and error estimation in the Bayesian view
  - ?
- Model comparison revisited
  - Anderson and Burham


- New efforts: second generation p-values (https://www.statisticalevidence.com/second-generation-p-values), or how they sneaked a prior into my frequentist analysis

#### Part 2: Building Models

Things that could be covered:

- From General to Generalized to Generalized Mixed Models
- Lets add instead: GAMs
- Temporal models: longitudinal data / time series
- Causality: SEM and Path analysis