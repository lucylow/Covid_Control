# Covid Control

<div>
  
  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/issues)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/pulls)
  [![License](https://img.shields.io/aur/license/android-studio.svg)]()

</div>

![](https://github.com/lucylow/Covid_Control/blob/main/images/covid-cases-final-04-06.gif)

---


## Table_of_Contents

* [Pandemic Response Motivation](#Pandemic_Response_Motivation)
* [Covid_Control](#Covid_Control)
* [Artifical_Neural_Network](#Artifical_Neural_Network)
* [LSTM_Model](#LSTM_Model)
* [Text_Generation_Model](#Text_Generation_Model) 
* [Text_Parameters](#Text_Parameters)
* [Usage](#Usage)
* [Predictions]
* [Conclusion](#Conclusion)
* [References](#References) 

---

## Pandemic Response Motivation

Innovation in the fight against the pandemic. Using machine learning to save lives in humanity's unprecedented global health emergy Novel Coronavirus (COVID-19) to flatten the curve.


Development of a data-driven AI systems to predict COVID-19 infection rates and prescribe Intervention Plans (IPs) that regional governments, communities, and organizations can implement to minimize harm when reopening their economies.

This pandemic requires access to localized, data-driven planning systems combined with cutting
edge artificial intelligence tools to help decision-makers develop and implement intervention plans that reduce infection cases, minimize negative economic impacts, and reopen their economies and societies.

Impact of the Covid19 in Numbers
* Cases 77.2M
* Recovered 43.5M
* Deaths 1.7M

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-21%20at%208.19.43%20PM.png)


Steering today’s $3.6-trillion healthcare economy in a bold new direction means rethinking business models and building new systems of engagement. Cognizant can help. We’re collaborating with healthcare’s leaders to enable a new model of health and improve people’s lives. Count on us to help you convert data into actionable insights, achieve higher levels of automation and efficiency, innovate new products and services, modernize infrastructure … and deliver better outcomes at sustainable cost.

The pandemic is driving consumers toward digital healthcare channels. Healthcare organizations must ensure their current offerings meet this demand while simultaneously building new digital capabilities to serve members and patients long term in a profoundly reshaped industry.


**When your kids ask "WHEN WILL WE USE MATH IN REAL LIFE?":**
1) Show them 3Blue1Brown's "Exponential growth and epidemics" Covid19 video
2) Remind them the of China's one-child policy to control exponentially increasing population size

  <a href="https://www.youtube-nocookie.com/embed/Kas0tIxDvrg
" target="_blank"><img src="http://img.youtube.com/vi/Kas0tIxDvrg/0.jpg" 
alt="Video" width="480" height="360" border="10" /></a>

------

## Technical Motivation 

The goal is to develop a machine learning model to predict the future number of Covid Cases:
* PHASE1 Predictor: LSTM (NPI-LSTM) Predictor Model

  * Phase 1 Predictor Development Estimate future numbers of daily COVID-19 cases with the greatest accuracy develop and submit predictor models that estimate the number of future cases for a given region(s)—considering the local intervention plans in effect based on live Oxford data—over a given time. 

* PHASE2 Prescriptor: Effective Reinforcement Learning through Evolutionary Surrogate-Assisted Prescription (ESP)

  * Produce the best prescription models for Intervention Plans. Implementation of the paper "From Prediction to Prescription: Evolutionary Optimization of Non-Pharmaceutical Interventions in the COVID-19 Pandemic".
  * An interactive demo illustrating the basic concepts of the competition, such as the predictor and prescriptor models and their interaction and performance
  * https://data.xprize.org/covid19
https://public.tableau.com/shared/2H3XFDHWW?:display_count=y&:origin=viz_share_link&:embed=y

---

## Technical Predictive Machine Learning  Architecture 

Based on knowledge of the populations and the epidemic, and the data so far about its progress in different populations and efforts to contain it, Covid Control can estimate how the disease will progress in the future.


**Cognizant Evolutionary AI**

https://www.cognizant.com/us/en/ai/evolutionary-ai

* Cognizant’s powerful, patented Learning Evolutionary Algorithm Framework (LEAF) uses advanced evolutionary algorithms and deep learning to produce actionable results from complicated, multivariate problems. In a very short period of time, potentially millions of variables can be evaluated against business goals, every option weighed for its benefit and the very best path to success identified.

* The Evolutionary Surrogate-Assisted Prescription (ESP) system learned to make recommendations about the spread of COVID-19. ESP’s two learning tasks include: learning to predict and using the predictor as a surrogate for the real world to prescribe actions that lead to desirable outcomes.

* The historical COVID-19 data comes from the publicly available COVID-19 data provided by Oxford University (Hale, Webster, Petherick, Phillips, Kira, 2020, Oxford COVID-19 Government Response Tracker, Blavatnik School of Government, Oxford University).

* This paper introduces a general such approach, called Evolutionary Surrogate-Assisted Prescription, or ESP. The surrogate is, for example, a random forest or a neural network trained with gradient descent, and the strategy is a neural network that is evolved to maximize the predictions of the surrogate model. 

* The evolutionary algorithms process generations of variable combinations very quickly. The least-useful-candidates are discarded and new ones are generated from variants of the most-useful-candidates through recombination and mutation.

* Improve Predictions: Evolving deep network architectures means the LEAF can automatically arrive at solutions

**Evaluation Sandbox**
* Upload predictor models to evaluate models through an automated robojudge where predictor must return a prediction in less than 1 hour for up to 180-days of prediction for up to 300 regions when it is called:
  * OS: Ubuntu Bionic 18.04
  * CPU: 2
  * RAM: 8 Gb
* Evaluation Sandbox Request Instructions 
https://docs.google.com/document/d/1rTSyuA5HFkpyH-jn9Z-bAtHIMyflKzvLilwA_xNwNxc/edit
* TEAM COVID CONTROL'S SANDBOX https://prcx-covidcontrol4479.xprizenotebooks.org/?token=ocmebh7t33kzocpyjbvkbbwjdkomn5efwg35wna5bjt446v
* Sandbox token for jupyter notebook 
  * https://cvat-xptatxxxxx.xprizenotebooks.org/?token=<token>
* A predictor is accessed through a script in the evaluation sandbox. The predictor must be called
with a single command with the following exact syntax and arguments:

> python predict.py -s start_date -e end_date -ip path_to_ip_file -o path_to_output_file

---

## Oxford Dataset

* The Oxford Covid-19 Government Response Tracker (OxCGRT) collects publicly available information on 19 indicators of government response and includes statistics on the number of reported Covid-19 cases and deaths in each country. There are 11 indicators of government response, such as school closings, travel bans, or other measures. For a full description of the data and how they are collected, see https://www.bsg.ox.ac.uk/research/publications/variation-government-responses-covid-19 

![](https://github.com/lucylow/Covid_Control/blob/main/images/OxCGRT_worldmap_govresponse.png)

* Only a subset of the NPIs will be used: those that have a direct impact on the spread of the virus (i.e. on the daily new cases number). Oxford uses them in its "Containment and health index". See https://github.com/OxCGRT/covid-policy-tracker/blob/master/documentation/index_methodology.md for the list. Basically C1 to C8, H1, H2, H3 and H6.

These can range from huge amounts of missing data (that are not missing at random), or unmeasured confounding, to systematic errors in the dataset (e.g., incorrect coding of drug treatments), to data collection issues that cause the distribution of data to be different than what we originally thought.
 
One such common issue with black box models in medical settings is data leakage, where some information about the label y sneaks into the variables x in a way that you might not suspect by looking at the titles and descriptions of the variables: sometimes you think you are predicting something in the future but you are only detecting something that happened in the past. In predicting medical outcomes, the machine might pick up on information within doctors’ notes that reveal the patients’ outcome before it is officially recorded and hence erroneously claim these as successful predictions.

--------
 
## Predictor Model Provided by Oxford University
 There are eight kinds of NPIs used to train the Predictor model. Each ranging in stringency from 0 (no measures) to 2, 3, or 4 (full measures). 

* Schools closing
* Workplace closing
* Cancel public events
* Restrictions on gatherings
* Close public transport
* Stay at home requirements 
* Restrictions on internal movements travel between regions/cities
* International travel controls


It is also important to note that there is roughly a two-week delay between the time a person is
infected and the time the case is detected. A similar delay can therefore be expected between the
time an NPI is put in places and its effect on the number of cases.

School and workplace closings turn out to be the two most important NPIs in the simulations: they have the largest and most reliable effects on the number of cases compared to e.g. restrictions on gatherings and travel. Second, partial or alternating NPIs may be effective. Prescriptors repeatedly turn certain NPIs on and off over time, for example, schools opening and closing on a weekly basis seems to imply the need for restricting schools to be opened fewer days per week. This is a creative and surprising solution, given the limited variability of NPIs that is available to the Prescriptors.


--------



## Optional Data Parameters that Affect Covid19

The frequency, intensity, locality, and duration of contacts is important but here are other factors that can have a measurable impact on the spread of the virus that I did not have time to implement in the model:

* Number of hospital beds per 1000 people for each country: https://www.kaggle.com/hamzael1/hospital-beds-by-country or https://www.kaggle.com/ikiulian/global-hospital-beds-capacity-for-covid19
  * Number of ICU beds per county/state: https://www.kaggle.com/jaimeblasco/icu-beds-by-county-in-the-us
* Visualization https://www.kaggle.com/ikiulian/simple-global-countries-visualization
* Weather data https://www.kaggle.com/johnjdavisiv/us-counties-covid19-weather-sociohealth-data
  * Seasonality and monthly temperature
  * Impact of temperature and humidity on transmission rate https://www.kaggle.com/noaa/gsod
  * Joined each region in the Johns Hopkins University data to the nearest weather station
* Compare Covid dataset with past pandemics:
  * SARS dataset https://www.kaggle.com/imdevskp/sars-outbreak-2003-complete-dataset
  * Ebola dataset https://www.kaggle.com/imdevskp/ebola-outbreak-20142016-complete-dataset
* Twitter sentiment analysis
  * Covid tweets Datasets http://www.lix.polytechnique.fr/dascim/software_datasets/projects/covid-twitter-analytics/
  * Regional covid twitter sentiments
* Economic indicators
  * Unemployment, consumer spending, and GNP. 
  * The World Bank's World Development Indicators https://www.kaggle.com/theworldbank/world-development-indicators
* Social dynamics between vulnerable groups affects transmissions. 
  * For instance in the case of HIV, mixing and contact depends on age groups.
* Release of measures like stimulus checks affecting 
* Confidence intervals, death rates, hospitalizationrates, ventilators needed.
* Coronavirus Retail Restrictions by region https://nrf.com/coronavirus-retail-restrictions-state
* Air conditioning and Covid spread
  * China https://wwwnc.cdc.gov/eid/article/26/7/20-0764_article 
  * Korea  https://www.latimes.com/world-nation/story/2020-12-09/five-minutes-from-20-feet-away[…]south-korean-study-shows-perils-of-indoor-dining-for-covid-19
* Number of seated resturant diners at restaurants per day since the end of February https://www.kaggle.com/jaimeblasco/opentable-state-of-the-restaurant-industry
* "Air transport, passengers carried",
* "Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)",
* "Cause of death, by non-communicable diseases (% of total)",
* "Current health expenditure per capita, PPP (current international $)",
* "Death rate, crude (per 1,000 people)",
* "Diabetes prevalence (% of population ages 20 to 79)",
* "GDP per capita, PPP (current international $)",
* "Hospital beds (per 1,000 people)",
* "Incidence of tuberculosis (per 100,000 people)",
* "International migrant stock, total",
* "International tourism, number of arrivals",
* "International tourism, number of departures",
* "Labor force participation rate, total (% of total population ages 15+) (modeled ILO estimate)",
* "Life expectancy at birth, total (years)",
* "Mortality from CVD, cancer, diabetes or CRD between exact ages 30 and 70 (%)",
* "Mortality rate attributed to household and ambient air pollution, age-standardized (per 100,000 population)",
* "Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene (per 100,000 population)",
* "Mortality rate, adult, female (per 1,000 female adults)",
* "Mortality rate, adult, male (per 1,000 male adults)",
* "Number of people spending more than 10% of household consumption or income on out-of-pocket health care expenditure",
* "Number of people spending more than 25% of household consumption or income on out-of-pocket health care expenditure",
* "Nurses and midwives (per 1,000 people)",
* "Out-of-pocket expenditure (% of current health expenditure)",
* "People using at least basic sanitation services (% of population)",
* "People using safely managed sanitation services (% of population)",
* "People with basic handwashing facilities including soap and water (% of population)",
* "Physicians (per 1,000 people)",
* "PM2.5 air pollution, population exposed to levels exceeding WHO guideline value (% of total)",
* "Population ages 15-64 (% of total)",
* "Population ages 65 and above (% of total)",
* "Population density (people per sq. km of land area)",
* "Population in the largest city (% of urban population)",
* "Population in urban agglomerations of more than 1 million (% of total population)",
* "Population, total",
* "Poverty headcount ratio at $3.20 a day (2011 PPP) (% of population)",
* "Prevalence of HIV, total (% of population ages 15-49)",
* "Smoking prevalence, females (% of adults)",
* "Smoking prevalence, males (% of adults)",
* "Survival to age 65, female (% of cohort)",
* "Survival to age 65, male (% of cohort)",
* "Trade (% of GDP)",
* "Tuberculosis case detection rate (%, all forms)",
* "Tuberculosis treatment success rate (% of new cases)",
* "Urban population (% of total)".


![](https://github.com/lucylow/Covid_Control/blob/main/images/OxCGRT_govresponse_vs_cases.png)


------------

## Phase1 : Predictor Model Design LSTM (NPI-LSTM) Predictor

* Keras representation of the learnable predictor model 
* The previous 21 days of Rn−t are fed into the context input; the previous 21 days of stringency values for the eight NPIs are fed into the action input. 
* The Lambda layer combines the context branch h and the action branch g  to produce a prediction Rˆn. 
* The effects of social distancing and endogenous growth rate of the pandemic are processed in separate pathways, making it possible to ensure that stringency has a monotonic effect, resulting in more regular predictions.

* LSTM example 'data' directory

* An LSTM neural network model  is trained with publicly available data on infections and NPIs in a number of countries and applied to predicting how the pandemic will unfold in them in the future. The predictions are cascaded one day at a time and constrained to a meaningful range.

* Even with current limited data, the predictions are surprisingly accurate and well-behaved. This result suggests that the data-driven machine learning approach is potentially a powerful new tool for epidemiological modeling. This is the first main contribution of the paper to extend the models from prediction to prescription.

* Using the data-driven LSTM model as the Predictor, a Prescriptor is evolved
in a multi-objective setting to minimize the number of COVID-19 cases, as well as the number and stringency of NPIs (representing economic impact). 

----------

## Phase 2: Effective Reinforcement Learning through Evolutionary Surrogate-Assisted Prescription (ESP)

* ESP is a continuous black-box optimization process for adaptive decision-making where the predictor (Pd) takes a decision as its input, and predicts the outcomes of that decision. A decision consists of a context and actions to be taken in that context

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-22%20at%204.12.37%20AM.png)
* a technique that combines evolutionary search with surrogate modeling 
https://arxiv.org/abs/2002.05368#:~:text=This%20paper%20introduces%20a%20general,predictions%20of%20the%20surrogate%20model.

* Use historical data available on decision making in organizations, consisting of the decision problem, what decisions were made, and how desirable the outcomes were
* In the NPI optimization task, ESP is built to prescribe the NPIs for the current day such thatthe number of cases and cost that would result in the next two weeks is optimized. 
* Learn a surrogate model
  * Evolve a decision strategy that optimizes the outcomes
  * Example surrogate == a random forest or a neural network trained with gradient descent, and the strategy is a neural network that is evolved to maximize the predictions of the surrogate model.
   * Majority of evaluations are done on the surrogate, ESP is more sample efficient, has lower variance, and lower regret than standard RL approaches
* Sequential decision-making tasks
* Reinforcement learning (RL)
* Decision optimization in real-world problems
* Weight parameters 

![](https://github.com/lucylow/Covid_Control/blob/main/images/OxCGRT_indices_vs_time.png)


---------

## Training Predictor and Prescriptor models 

The ESP algorithm then operates as an outer loop that constructs the Predictor and Prescriptor models:

1. Train a Predictor based on historical training data;
2. Evolve Prescriptors with the Predictor as the surrogate;
3. Apply the best Prescriptor in the real world;
4. Collect the new data and add to the training set;
5. Repeat.

The data from submissions will be ranked in each region according to the cumulative error in the 7-day moving average for the number of cases per 100,000 people.

Two overall performance measures will be formed:
* Mean ranking of teams across all regions
* Mean ranking of teams across the specialty regions, if selected

* Amazon Web Services Training Costs

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-22%20at%205.06.57%20PM.png)

<img src="https://github.com/lucylow/Covid_Control/blob/main/images/AWS%20training%20cost.png" alt="alt text" width ="" height="">

* These baselines included linear regression, random forest regression (RF), support vector regression (SVR) with an RBF kernel, and feed-forward neural network regression (MLP). Each baseline was implemented with sci-kit learn, using their default parameters. 
* The model was trained until validation MAE did not improve for 20 epochs, at
which point the weights yielding the best validation MAE were restored. Since the model and
dataset are relatively small compared to common deep learning datasets, the model is relatively
inexpensive to train. On a 2018 MacBook Pro Laptop with six Intel i7 cores, the model takes
276 ± 31 seconds to train (mean and std. err. computed over 10 independent training runs).
* NPI-LSTM outperforms the baselines on all metrics. The simple linear model outperforms them substantially on the metrics that require forecasting beyond a single day, showing the difficulty that off-the-shelf nonlinear methods have in handling such forecasting.

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-22%20at%204.15.02%20AM.png)

For each day in the 180-day evaluation period, the prescriptor is called with the date and weights as specified above, obtaining prescriptions for each region. They are evaluated along the two objectives:
* The standard predictor is called to estimate the number of cases for each region; and
* The total intervention plan stringency is calculated for each region using the Oxford
University Blavatnik School of Government’s COVID-19 Government Response Tracker
Stringency Index formula, with the specified weights for the region.

The weights for each region are drawn from a uniform distribution within [0..1] and normalized to sum up to one. The process is repeated three times with different weights and the results are
averaged. The same three sets of weights are used to evaluate all prescriptors. Additionally, a case where all weights are equal is used as a separate base-case evaluation. The predictions and
stringency will be averaged over the 180-day period to obtain the final objective values (i.e., cases and stringency) for the prescriptor for each region.


Results with both the base case (with equal weights) and the general case (with random weights)will be presented to the judges as the outcome of the first quantitative evaluation.

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-22%20at%204.12.45%20AM.png)

------


## Model Error Analysis

An important aspect of any decision system is to make it trustworthy, i.e. estimate confidence in its decisions and predictions, allow users to utilize their expert knowledge and explore alternatives, and explain the decision recommendations. The first step was already taken in this study by applying the RIO uncertainty estimation method (Section 5.3) to the predictions. This approach may be improved in the future by grouping the countries according to original predictor performance, then training a dedicated RIO model for each group. In this way, each RIO model focuses on learning the predictive uncertainty of countries with similar patterns, so that the estimated confidence intervals
become more reliable. As a further step, the estimated uncertainty can be used by the Prescriptor to make safer decisions.

![](https://github.com/lucylow/Covid_Control/blob/main/images/Screen%20Shot%202020-12-22%20at%204.12.56%20AM.png)
* Mean Absolute Error
  * the students that rank higher will have a lower score on the metric, which means they incurred fewer errors you should aim for the minimum Mean Absolute Error (MAE)
  * The evaluation metric for this competition is Mean Absolute Error (MAE). The MAE metric takes the differences in all of the predicted and actual prices, adds them up and then divides them by the number of observations.
  * MAE=1N∑t=1N|pi−ai|
where N is the number of tweets in the testing dataset, pi the predicted number of retweets for tweeti and ai the actual number of retweets for the same tweet

Note: the historical cases are not explicitly an input to the predictor. The predictor can,however, save and access the historical case data up to the starting point of the evaluation in the evaluation sandbox work folder. It can then use its own predictions in lieu of actual cases for the active evaluation period. In this manner, its predictions can be based on parallel time series of case history and intervention plan history up to the current point in time.

Three types of tests:
* Tests on historic data to see the performance of the model
* Tests on data from Dec 22nd to Jan 11th -- to see the performance in the 'near future' and be able to validate it with the real data
* Tests of hypothetical future scenarios (beyond Jan 11th) where they will create different NPIs scenarios and they want to see how the models perform


Sanity checks:
* Ranking on retrospective runs on historical intervals, representing a broader range of
situations than encountered in live testing
* Other predictor sanity check pass/fail results (e.g., negative predictions, maximal and
minimal stringency predictions, and predictions exceeding population size)



---
## Model Evaluation Results

![](https://github.com/lucylow/Covid_Control/blob/main/images/OxCGRT_six_countries.png)

**Innovation to extend scope of challenge ** 
Teams who submit and use additional data, intervention plans (such as
vaccination policies and treatments), or otherwise find innovative ways to extend the scopeof the challenge will be ranked highly;

* How long does someone with COVID-19 typically stay on a ventilator? Some people may need to be on a ventilator for a few hours, while others may require one, two, or three weeks. If a person needs to be on a ventilator for a longer period of time, a tracheostomy may be required. During this procedure, a surgeon makes a hole in the front of the neck and inserts a tube into the trachea.

* N95 masks can be rotated every 3–4 days, heated for 60 min, steamed or boiled for 5 min, and then air-dried. These methods retain 92.4–98.5% filtering efficiency (FE). Using soap and water or medical grade alcohol significantly decreases the FE of the masks (54% and 67%, respectively).

* Can a person become re-infected with COVID-19 within 3 months of recovery?
Review of currently available evidence suggests that most individuals do not become re-infected within 3 months of resolution of SARS-CoV-2 infection.

* 14 day self-quarantine.  You should still self-quarantine for 14 days since your last exposure. It can take up to 14 days after exposure to the virus for a person to develop COVID-19 symptoms. A negative result before end of the 14-day quarantine period does not rule out possible infection. By self-quarantining for 14 days, you lower the chance of possibly exposing others to COVID-19.

* Contact Tracing Apps. Contact tracing is an effective disease control strategy that involves identifying cases and their contacts then working with them to interrupt disease transmission. This includes asking cases to isolate and contacts to quarantine at home voluntarily. Contact tracing is a key strategy to prevent the further spread of COVID-19.

* Incubation Time Period- Typically, a person develops symptoms 5 days after being infected, but symptoms can appear as early as 2 days after infection or as late as 14 days after infection, and the time range can vary.

* It typically takes a few weeks for the body to build immunity after vaccination. That means it's possible a person could be infected with the virus that causes COVID-19 just before or just after vaccination and get sick. This is because the vaccine has not had enough time to provide protection.

* Call 911 or call ahead to your local emergency facility: Notify the operator that you are seeking care for someone who has or may have COVID-19.

* Number of Critical Covid cases: In critical COVID-19 -- about 5% of total cases -- the infection can damage the walls and linings of the air sacs in your lungs. As your body tries to fight it, your lungs become more inflamed and fill with fluid. This can make it harder for them to swap oxygen and carbon dioxide.

* Early vs Late stage covid19 trials 

* Vaccinations
  * Tracking COVID-19 vaccination rates:https://ourworldindata.org/covid-vaccinations
  * Vaccine development: vaccines approved for use and in clinical trials
  * Vacine canidates, trial deadlines, vacine diswtrubution, vacine implementation 


**Generality**
Teams will first be evaluated on how well their models perform across all
regions. Subsequently, teams will be awarded bonus points for how well their models do in
specialty regions;

All regions score == ________
Specialty region score (bonus) == _________


**Collaborative contributions**
Teams that take an open-source approach to the data or
models that they use, and who contribute data and models to the shared success of all
teams will be ranked highly;

- Data and model is free, assiesbsle, and on open source platform github
-Interested in the shared sucess of all teams 

The Challenge’s open platform will enable increased and higher-quality data,
accurate predictions, stronger regional intervention plans, and continual improvement as new
interventions such as vaccinations and treatments become available. It will provide a platform for
shared human and machine creativity and problem-solving, and ultimately a tool for future
humanitarian crises.

Join us in building a collaborative AI for Good ecosystem that fosters innovative, evidence-based
decision-making to combat COVID-19 and future emergencies.


**Consistency**
Approaches that stay within an acceptable range of accuracy in the short
and long term, and that perform as expected in any scenario analyses run by the Judging
Panel, are preferred;

Error range margin short term: 
Error range margin long term:

Scernerio Analysis:
scenerio1:
scenerio2:
scenerio3:


**Speed and resource use**
Model that are faster and more efficient in their approach are preferred;


**Addressing the challenge**
Teams must avoid taking shortcuts or finding loopholes to
improve their quantitative performance at the expense of real-world performance.
Additionally, teams may be awarded bonus points for predicting additional, relevant public
health metrics such as required hospital beds and ventilators

Bonus points for predicting additional health metrics
- predict # of hospital beds [points]
- predict # ventilators [points]


**Explanation**
Submissions should include a narrative description of how the model works,
the data it uses, and its sources as well as any relevant points related to these themes.
Furthermore, models that emphasize interpretability by being able to explain why the model
is predicting what it does (i.e. glass-box models) will be ranked highly.

How the model works


Machine learning is frequently referred to as a black box—data goes in, decisions come out, but the processes between input and output are opaque.

Explainable artificial intelligence 
https://en.wikipedia.org/wiki/Explainable_artificial_intelligence
https://medium.com/@alkali.app/glass-box-models-a-gentle-introduction-2f39589c09d1

- solution can be understood by humans
-It contrasts with the concept of the "black box" in machine learning where even their designers cannot explain why the AI arrived at a specific decision.
- The technical challenge of explaining AI decisions is sometimes known as the interpretability problem
- optimize behavior to satisfy a mathematically-specified goal system chosen by the system designers, such as the command "maximize accuracy of assessing how positive film reviews are in the test dataset".
- Explainable Machine Learning Challenge, a prestigious competition organized collaboratively between Google, the Fair Isaac Corporation (FICO), and academics at Berkeley, Oxford, Imperial, UC Irvine, and MIT. 

the term "glass box" has also been used to systems that monitor the inputs and outputs of a system, with the purpose of verifying the system's adherence to ethical and socio-legal values and, therefore, producing value-based explanations.

SIMPLE IS BETTER?

Inherently interpretable models vs. black-box deep-learning models


Explainable AI (XAI) is the class of systems that provide visibility into how an AI system makes decisions and predictions and executes its actions. XAI explains the rationale for the decision-making process, surfaces the strengths and weaknesses of the process, and provides a sense of how the system will behave in the future.


 the interpretable models (which were very small linear models or logical models in these studies) performed just as well as the more complicated (black box) machine learning models (Zeng et al., 2016). 
 
  No matter whether we used a deep neural network or classical statistical techniques for linear models, we found that there was less than a 1% difference in accuracy between the methods, which is within the margin of error caused by random sampling of the data. 
  
  Further, when scientists understand what they are doing when they build models, they can produce AI systems that are better able to serve the humans who rely upon them. In these cases, the so-called accuracy–interpretability tradeoff is revealed to be a fallacy: more interpretable models often become more (and not less) accurate.
  
  The result is Covid-Control AI that says things like “I’m moving left to stay behind the blue truck” every time it moves. 
  
  (in which they show that people’s ability to understand an interactive or static visualization depends on their education levels.) Think of a cancer-diagnosing AI, . You’d want the explanation it gives to an oncologist to be very different from the explanation it gives to the patient.



**Actionability and usability**
Models that are usable in a real world setting, that provide interactivity and actionability

Website is LIVE at _________________
Dashboard for UI/UX 


Interactive Demo 

To help understand the mechanisms and possibilities of ESP models, an interactive demo of the
current state of the approach to NPI optimization is available at https://evolution.ml/esp/npi


This demo will change as the models improve and new functionality is added

The user can select a country by clicking on the map, and a Prescriptor from the Pareto front by clicking on the slider between Cases and NPIs. At the very left, the Presciptors prefer to minimize cases and therefore usually recommend establishing nearly all possible NPIs. At the very right, the Prescriptors prefer to minimize NPIs and therefore usually recommend lifting nearly all of them—usually resulting in an explosion of cases. The most interesting Prescriptors are therefore somewhere in the middle-left of this range. 

With more and better data and further development, the demo may eventually develop into a tool that can be used to augment human decision making in the pandemic.














**Inclusivity and fairness:**
The degree to which the data, model, and approaches consider particularly vulnerable groups in designing and implementing their solution will be evaluated. Teams may also be judged on documented evidence of the diversity of perspectives they sought input from during the development of their solution; 

Vulnerable groups may include the unemployed, working poor, unhoused individuals, children,
the elderly, people with disabilities, ethnic minorities, and other marginalized groups.

- Who is considered high risk for Covid19? We do know that older adults and people who have severe underlying medical conditions like obesity, diabetes, or heart or lung disease are at higher risk for developing more serious complications when they have COVID-19.



**Transparency and trust:**
The extent to which their solution enables and facilitates
user-facing transparency, including the ease with which a layperson can access and
understand information related to how the solution functions, what data is collected and
stored, and how that data may be used will be considered.


 Making AI trustworthy through instance-level and model-level explanations
 
 Marketing professionals and customers who use an AI
 system can be skeptical of the system if they are unclear about the motives and reasonableness of the system. Their trust in the AI system can operate at two different levels—the prediction or action and the model. Research on how different XAI approaches can influence users’ trust at each of these two levels in different application domains can contribute to our understanding on how explanation capabilities can influence the trust in AI applications. Studies along these lines can assess how consumers’ trust in an AI-based ad targeting system can be developed by XAI which surfaces as to why specific ads are targeted to a consumer and the features underlying the ad-targeting model. Work along these lines can also assess how feedback from consumers on the reasonableness of explanations can be used to improve ad targeting and reduce the likelihood of the ads being seen as clickbait.


Achieving AI fairness
XAI techniques can be used to reveal whether attributes such as race or gender, or socio-economic and locational variables that proxy for them, are directly or indirectly used in black-box models so the models are biased against certain groups. Research on fairness in marketing AI can generate insights on how XAI can be integrated with the development and deployment of AI systems to prevent and detect algorithmic bias in applications from recommendation systems to reputation scoring to targeting promotions and advertisements.



-------


## Conclusion 

Pharmaceutical interventions such as treatments and
vaccines will take time to develop, so the focus has been on implementing non-pharmaceutical
interventions, i.e. NPIs. The goal is to ”flatten the curve,” i.e. limit the spread, gain time, and
prevent hospitals from being overwhelmed until a vaccine can be developed [14, 15].


Current clinical management of COVID-19 includes infection prevention and control measures and supportive care, including supplemental oxygen and mechanical ventilatory support when indicated. The U.S. Food and Drug Administration (FDA) has approved one drug, remdesivir (Veklury), for the treatment of COVID-19 in certain situations.

Right now, CDC recommends COVID-19 vaccine be offered to healthcare personnel and residents of long-term care facilities.

There is currently a limited supply of COVID-19 vaccine in the United States, but supply will increase in the weeks and months to come.


Coronavirus Treatment Acceleration Program (CTAP)
590+ drug development programs 
390+ trials reviewed by FDA 

- Antiviral drugs keep viruses from multiplying and are used to treat many viral infections (such as HIV, Herpes, Hepatitis C, and influenza).  
- Immunomodulators are aimed at tamping down the body’s own immune reaction to the virus, in cases where the body’s reaction basically goes overboard and starts attacking the patient’s own organs.
- Neutralizing antibody therapies may help individuals fight the virus and include manufactured antibodies, animal-sourced antibody therapies, and blood-derived products such as convalescent plasma and hyperimmune globulin, which contain antibodies taken from people who have previously had COVID-19.
- Cell therapy products include cellular immunotherapies and other types of both autologous and allogeneic cells, such as stem cells, and related products.
- Gene therapy products seek to modify or manipulate the expression of a gene or to alter the biological properties of living cells for therapeutic use.

Combination of multiple single agent treatments


Dec 15 2020 is an updated list of 22 of the most-talked-about treatments for the coronavirus.
https://www.nytimes.com/interactive/2020/science/coronavirus-drugs-treatments.html


Government Measures to Combat COVID19 Trying to flatten the curve!
* The COVID19 Government Measures Dataset puts together all the measures implemented by governments worldwide in response to the Coronavirus pandemic.  https://www.kaggle.com/barun2104/government-measures-to-combat-covid19
* Data collection includes secondary data review. The researched information available falls into five categories:
  * Social distancing (reduced resturant capacity)
  * Movement restrictions
  * Public health measures (mandatory masks)
  * Social and economic measures
  * Lockdowns
  
![](https://github.com/lucylow/Covid_Control/blob/main/images/OxCGRT_worldmap_schools.png)


Businesses are spending more than US$300B dealing with regulatory change and increasing amounts of time and effort are devoted to control, risk and compliance functions. With constant changes in regulation threatening to hamper growth and innovation, leaders are using automation to transform their operations, processes and even business models to drive resilience and agility.


As COVID-19 creates further economic uncertainty and loss, maximizing returns, managing risk and ensuring the continued health of your business demands a deep understanding of changing market conditions and government policy. Timely, in-depth political and economic scenario analysis for the outbreak and the potential path(s) to recovery for individual economies is increasingly critical to business planning and commercial decisions. 


-------

##  Conclusion 

The impact of the coronavirus (COVID-19) is being felt by all businesses around the world. Leaders are navigating a broad range of interrelated issues that span from keeping their employees and customer safe, shoring-up cash and liquidity, reorienting operations and navigating complicated government support programs.

To help you understand the implications of COVID-19 and, more importantly, best position your business to be resilient in the future, review the latest thinking and insights from our professionals from around the world.

AI and humans need to work together. Cooperation between agents, in this case algorithms and humans, depends on trust. If humans are to accept algorithmic prescriptions, they need to trust them.  The second quantitative evaluation addresses an important and novel aspect of the
competition: it is a community effort. Team contributions are brought together into a common
population, and a modern machine learning discovery method is used to find synergies and
compatible innovations to achieve better performance than would otherwise be possible.

This is the submission for Team Covid Control for the XPRIZE Pandemic Response Challenge. AI prediction model to estimate daily COVID-19 cases with astronomically high accuracy and prescriptive models for Intervention Plans that minimize infection cases and economic costs.



---

## References 
* COVID19 Global Forecasting https://www.kaggle.com/c/covid19-global-forecasting-week-5/data
* Paper. From Prediction to Prescription: Evolutionary Optimization of Non-Pharmaceutical Interventions in the COVID-19 Pandemic https://arxiv.org/pdf/2005.13766.pdf
* Addressing the business challenges presented by the coronavirus. https://home.kpmg/xx/en/home/insights/2020/03/the-business-implications-of-coronavirus.html
* Preparing first responders, healthcare providers, and health systems
 https://www.cdc.gov/coronavirus/2019-ncov/cdcresponse/index.htmlhttps://www.cdc.gov/coronavirus/2019-ncov/cdcresponse/index.html
* scientific information about the 2019 novel Coronavirus https://www.ncbi.nlm.nih.gov/research/coronavirus/
* Novel Coronavirus Outbreak https://novel-coronavirus.onlinelibrary.wiley.com/
* Coronavirus (COVID-19) Research Highlights https://www.springernature.com/gp/researchers/campaigns/coronavirus
* Access to OUP resources on COVID-19 https://academic.oup.com/journals/pages/coronavirus
* Elsevier Coronavirus Research Repository https://coronavirus.1science.com/search
* Explainable artificial intelligence
 https://en.wikipedia.org/wiki/Explainable_artificial_intelligence
* Glass-Box Models: A Gentle Introduction
 https://medium.com/@alkali.app/glass-box-models-a-gentle-introduction-2f39589c09d1
* Why Are We Using Black Box Models in AI When We Don’t Need To? A Lesson From An Explainable AI Competition
https://hdsr.mitpress.mit.edu/pub/f9kuryi8/release/6
* Why asking an AI to explain itself can make things worse
 https://www.technologyreview.com/2020/01/29/304857/why-asking-an-ai-to-explain-itself-can-make-things-worse/
* Augmenting Human Decision Making Optimizing COVID-19 Interventions https://evolution.ml/esp/npi/

