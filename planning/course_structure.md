##Statistical Analysis and Modelling of Ecological Data 

Course Planning



### Main premises of the course:

- Statistics is philosophy of science translated into math
- There is no single, true statistical method for any given problem
- Statistics is about expressing belief and/or uncertainty in the form of **models**
  - Even if you're just calculating a mean, your building a (very simple) statistical model
- In ecology, **effect size** is everything. Yes/no decisions are of rare and limited interest.
- A good way to gain insight through statistics is by **model comparison**



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

  - Likelihood and model comparison: the one ring to rule them all? (see https://stat.ethz.ch/pipermail/r-sig-ecology/2008-September/000321.html )

    - Likelihood can be applied frequentist or bayesian beliefs, but can also be a theory in itself, through model comparison

  - The state and evolution of modeling in Ecology

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

    - Likelihood the frequentist way
    - Likelihood the Bayesian way

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
    
          - There is no defense of blanket 5% alpha
          - In fact other areas don't use it - physics and the "5-sigma" certainty
        - The null is meaningless without an alternative, since "not null" means "anything else"
        - Absence of evidence is not evidence of absence. Failing to reject the null does not mean accepting it as true (otherwise you might as well calculate *p* for the alternative and run with it)
        - the traditional frequentist approach makes sense for controlled experiments, but most ecology is observational, so there is no true decision. We are then more interested in estimating effect sizes that in making yes/no decisions.
        - Most of the hypothesis testing theory ecologists mis(use) today was developed at the beginning of last century, before computers. How much of it still makes sense today?
  - The problem of unimportant, uninformative hypotheses

    - Readings: the Earth is round, p <0.05, Is there a difference - a nonsensical question, mindless statistics, the difference between significant and non significant results is not significant
  - Can we make better use of frequentist hypothesis testing?

    - Make specific predictions
    - Do you homework before the experiment - define your sig, power, and estimate your N beforehand.
    - Refrain from two-tailed tests. Sure if you have a decent question you at least expect a **direction** for the effect?
  - Do we need to do hypothesis testing? A non-hypothetical frequentist approach through estimating parameter uncertainty and assessing it using p-values

    - Still, confidence intervals will make more sense than p-values here. But no need to worry, they are equivalent.
- Hypotheses and error estimation in the Bayesian view
  - ?
- Model comparison revisited
  - Anderson and Burham
  - Pure likelihoodness - is all evidence relative?


- New efforts: second generation p-values (https://www.statisticalevidence.com/second-generation-p-values), or how they sneaked a prior into my frequentist analysis

#### Part 2: Building Models

Things that could be covered:

- From General to Generalized to Generalized Mixed Models
- Lets add instead: GAMs
- Temporal models: longitudinal data / time series
- Causality: SEM and Path analysis



####Part 3: Predictive models and machine learning

- Pig data fable

- If you truly only care about the accuracy of your predictions, then screw parameters and assumptions.

- Simplicity (interpretability), generality, accuracy: pick any two

- Is parsimony a fallacy?

- How to evaluate models when there are no parameters and no assumptions: validation and testing

- The machine learning framework: sample -> augment -> fit -> tune -> test -> repeat

- Ecologists don't have big data. No, hundreds of observations are not big data. **Millions** of observations are big data.

- Bringing interpretability back: variable importance measurements and other approaches

  ​