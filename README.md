# Covid Control
Flatenning the Curve, Social Distancing

Novel Coronavirus (COVID-19)
HUMANITY'S UNPRECEDENTED GLOBAL HEALTH EMERGENCY.


Human innovation in the fight against the pandemic is saving lives



<div>
  
  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/issues)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/lucylow/Covid_Control.svg)](https://github.com/lucylow/Covid_Control/pulls)
  [![License](https://img.shields.io/aur/license/android-studio.svg)]()

</div>

---

XPRIZE Pandemic Response Challenge. AI prediction model to estimate daily COVID-19 cases with astronomically high accuracy and prescriptive models for Intervention Plans that minimize infection cases and economic costs.

Python modeel application for machine learning training Next Character Predictions using Long Short Term Memory Model (LSTM) and Time Series Prediction. Train model to generate random text based on patterns in a given text corpus.

This is the submission for Team Covid Control.

POP Leaderboard
https://pop.xprize.org/Prizes/PrizeDetails?codename=pandemic_response_challenge
In order for your team’s model to show up on the leaderboard, you must activate your Evaluation Sandbox and upload your predictor model. 

Submission Activities in POP

Please refer to the Pandemic Response Challenge Guidelines for full details on submission criteria. Starting December 17, the following submission activities will be live in POP and you can begin uploading your documents:  

Activity 1 (required): Qualitative Document upload (PDF format only, single document)
Activity 2 (optional): Optional document uploads (any format, multiple document/file uploads)

https://coronavirus.jhu.edu/map.html

 This belief stems from the historical use of machine learning in society: its modern techniques were born and bred for low-stakes decisions such as online advertising and web search where individual decisions do not deeply affect human lives.

---


## Table_of_Contents

* [Motivation](#Motivation)
* [Covid_Control](#Covid_Control)
* [Artifical_Neural_Network](#Artifical_Neural_Network)
* [LSTM_Model](#LSTM_Model)
* [Text_Generation_Model](#Text_Generation_Model) 
* [Text_Parameters](#Text_Parameters)
* [Usage](#Usage)
* [Conclusion](#Conclusion)
* [References](#References) 

---

## Pandemic Response Motivation

"The Pandemic Response Challenge is a $500K, four-month challenge that focuses on the development of data-driven AI systems to predict COVID-19 infection rates and prescribe Intervention Plans (IPs) that regional governments, communities, and organizations can implement to minimize harm when reopening their economies."

https://www.xprize.org/challenge/pandemicresponse

The goal is to develop prediction models:
- Phase 1 Predictor Development Estimate future numbers of daily COVID-19 cases with the greatest accuracy

develop and submit predictor models that estimate the number of future cases for a given region(s)—considering the local intervention plans in effect based on live Oxford data—over a given time. The data (estimates) each model generates will be evaluated by a Cognizant-designed “Robo Judge”—a tool that compares teams’ prediction data against real time data and the other teams’ results. T

- Phase 2) Produce the best prescription models for Intervention Plans.


COMPEITION EVLAUIATION PHRASES

PHASE ONE—PREDICTOR DEVELOPMENT OVERVIEW
PHASE ONE—PREDICTOR SUBMISSION REQUIREMENTS
PHASE ONE LIVE MODEL TESTING
PHASE ONE— PREDICTOR JUDGING
PHASE TWO—PRESCRIPTOR SUBMISSION REQUIREMENTS
PHASE TWO—FINAL PREDICTOR AND PRESCRIPTOR JUDGING

Impact of the Covid19 Crisis
PEOPLE
Cases
77.2M
Recovered
43.5M
Deaths
1.7M

https://data.xprize.org/covid19
https://public.tableau.com/shared/2H3XFDHWW?:display_count=y&:origin=viz_share_link&:embed=y

people's livelihoods, their health and our food systems
loss of human life worldwide
social disruption
number of undernourished people, currently estimated at nearly 690 million, could increase by up to 132 million by the end of the year.
Particular attention must be paid to the situation of women, who are over-represented in low-paid jobs and care roles.
global conferences and events across technology, fashion, and sports are being cancelled or postponed

MONEY
caused the largest global recession in history, with more than a third of the global population at the time being placed on lockdown.
economic disruption
panic buying of toliet paper
food shortages, price spikes, and disruption to markets.
 Nearly half of the world’s 3.3 billion global workforce are at risk of losing their livelihoods
 
 many are unable to feed themselves and their families
 no income means no food
 Border closures, trade restrictions and confinement measures have been preventing farmers from accessing markets, including for buying inputs and selling their produce, and agricultural workers from harvesting crops, thus disrupting domestic and international food supply chains and reducing access to healthy, safe and diverse diets.
 financial relief for businesses, including micro, small and medium-sized enterprises.
 
 restaurant industry sustaining one of the heaviest blows.
 With the number of COVID-19 cases in the U.S. reaching 2,000 by mid-March, many state and city officials announced executive orders to shut down all onsite-dining at restaurants and bars. 

---

## Artifical Intelligence Solution: Covid Control

How can AI support the research community in times of crisis?

lowlucyy06875

API KEYS PRIZE NAME: PRCX
TEAM NAME: COVID CONTROL

Web application for artifical intelligence model training and text generation:

*Image. Screenshot of the web demo at https://lucylow.github.io/Covid_Control*

---

## Technology

The technical details that ensure the quality, safety, and efficiency 

**Cognizant**

**Amazon's AWS for configuring the training environment**
- AWS has generously donated cloud credits to be used by eligible teams for model development and training during Phase 1 of the competition. Thank you Mr.Jeff Bezos!
- WS has generously donated cloud credits to be used by eligible teams for model development and training during Phase 1 of the competition.
- Only fully registered teams (as indicated on POP) are eligible to receive the $250 in credits. Teams must use the credits only for the stated purpose of developing/training models for the Pandemic Response Challenge 

**Evaluation Sandbox***
- upload predictor models 
- Teams must activate their Evaluation Sandboxes as soon as possible and upload their predictor models well ahead of the December 22 deadline so we can work out any technical issues that arise. We will be unable to assist after the December 22 deadline since the environments will be locked. 

the only way for your team to verify that your model works correctly and can be properly evaluated by the Robo Judge is to see if your model’s results show up on the Leaderboard on the Pandemic Response POP website. 

Evaluation Sandbox Request Instructions
https://docs.google.com/document/d/1rTSyuA5HFkpyH-jn9Z-bAtHIMyflKzvLilwA_xNwNxc/edit

 the purpose of this sandbox is to evaluate your model (through the automated Robo Judge every 9AM UTC) and is not suited for training models. 
 
 
 TEAM COVID CONTROL'S SANDBOX
 https://prcx-covidcontrol4479.xprizenotebooks.org/?token=ocmebh7t33kzocpyjbvkbbwjdkomn5efwg35wna5bjt446v

Following are the specifications of each evaluation sandbox.  Teams should remember that their predictor must return a prediction in less than 1 hour for up to 180-days of prediction for up to 300 regions when it is called.
OS: Ubuntu Bionic 18.04
CPU: 2
RAM: 8 Gb

You can also find the token when you are logged into the sandbox by entering “jupyter notebook list” in the terminal.  This provides the token, however you will need to combine it with your sandbox domain name in order to construct the full URL + Token, such as:

https://cvat-xptatxxxxx.xprizenotebooks.org/?token=<token>


A predictor is accessed through a script in the evaluation sandbox. The predictor must be called
with a single command with the following exact syntax and arguments:

> python predict.py -s start_date -e end_date -ip path_to_ip_file -o path_to_output_file


This call should write a CSV file to path_to_output_file containing the predictions for the daily cases between start_date and end_date, included, for each country and region for which path_to_ip_file contains an intervention plan. The CSV file should contain:

● One row per day per region for which an intervention plan was supplied;
● Required Columns: Date, CountryName, RegionName, PredictedDailyNewCases; and
● Optional Columns: Teams may produce additional columns as output of their predictor
models in the CSV file. These columns will be noted by the judges but not evaluated by the
Robo Judge. Example optional columns could be:
○ A column labeled IsSpecialty to indicate whether a region is to be considered a
speciality region for your model (1 = speciality region, 0 = not a speciality region)
○ A 95% confidence interval and standard deviation for predicted number of cases
○ Predicted number of deaths and related 95% confidence intervals
○ Predicted number of hospitalization rates and related 95% confidence intervals
○ Predicted number of ventilators needed and related 95% confidence internals
○ Other columns chosen by the team

A sample CSV output file can be found here on the GitHub
https://github.com/leaf-ai/covid-xprize/blob/master/2020-08-01_2020-08-04_predictions_example.csv






Installing and using R on your sandbox

If you would like to use R on your sandbox, please add the following code snippet to your predict.py file:
"""
#!/usr/bin/env python
from subprocess import check_call, CalledProcessError
import conda.cli
try:
    check_call(['which', 'R'])
except CalledProcessError:
    conda.cli.main('conda', 'install',  '-c', 'r', 'r-irkernel', '-y')
else:
    print ('R is installed!')
"""
(The first line is not required if you are embedding this code snippet in an existing script.)


---
**Robo Judge**

the Robo Judge process runs daily at 1AM PST, but we have 

scheduled some additional runs leading up to the deadline to allow for more testing of your models and the results:

Monday, December 21st at 1am PST

Monday, December 21st at 3pm PST

Tuesday, December 22nd at 1am PST

Tuesday, December 22nd at 3pm PST

You do not have to compute the MAE - the robojudge does it. See https://github.com/leaf-ai/covid-xprize/blob/master/predictor_robojudge.ipynb for an example of what robojudge does. (edited) 


---

## Cognizant 

---

## Oxford Dataset

Due to the changing list of countries / regions in the Oxford dataset, and lack of data from some available regions, we have decided to set a final list of countries / regions that will be used for the competition. This list will not change after this announcement.  Please validate that your models work with this list as soon as possible.


Final list of countries and regions

Due to the changing list of countries / regions in the Oxford dataset, and lack of data from some available regions, we have decided to set a final list of countries / regions that will be used for the competition. This list will not change after this announcement.  Please validate that your models work with this list as soon as possible.

 

List of countries / regions: https://github.com/leaf-ai/covid-xprize/blob/master/countries_regions.csv

 

108 datasets provided
https://data.xprize.org/Datasets

* Only a subset of the NPIs will be used: those that have a direct impact on the spread of the virus (i.e. on the daily new cases number). Oxford uses them in its "Containment and health index". See https://github.com/OxCGRT/covid-policy-tracker/blob/master/documentation/index_methodology.md for the list. Basically C1 to C8, H1, H2, H3 and H6.


These can range from huge amounts of missing data (that are not missing at random), or unmeasured confounding, to systematic errors in the dataset (e.g., incorrect coding of drug treatments), to data collection issues that cause the distribution of data to be different than what we originally thought.
 
One such common issue with black box models in medical settings is data leakage, where some information about the label y sneaks into the variables x in a way that you might not suspect by looking at the titles and descriptions of the variables: sometimes you think you are predicting something in the future but you are only detecting something that happened in the past. In predicting medical outcomes, the machine might pick up on information within doctors’ notes that reveal the patients’ outcome before it is officially recorded and hence erroneously claim these as successful predictions.
 
-----

## Specialty Regions: United States 

Optionally, teams can highlight the list of “specialty regions” they would like judges to
consider for their model. These regions are the focus of a team’s predictor model beyond
the general evaluation. In these regions, their performance will be measured and judged
separately. (Note: please refer to the Oxford dataset for a list of all available regions.)

Top countries total cases
1) USA
2) India
3) Brazil
4) Russia
5) France

Focusing on the US which is currently #1 cases.

----

## optional input fields that affect covid19

optional fields, such as confidence intervals, death rates, hospitalization
rates, ventilators needed, and other outputs.

additional datasets (like weather or mobility) will not be available because there will be no internet connection.  That means that our model must make all its predictions based on just real NPIs and forecast case rates

Since weather seems to play a role, I wonder if inclusion of weather data, temperature, humidity, precipitation, etc, might improve predictions?  Also, cultural differences I hard, but one popular ML project is twitter sentiment analysis.  Could one include some measure of regional covid twitter sentiments, or government intervention twitter sentiments with the data to do some accounting for culturally divergent responses?  It would not be trivial, models would have to trained separately by region to account for language differences, or have some sort of translation in the preprocessing, but maybe...?

Seasonality will definitely affect the outcome. I included the monthly temperature, but this feature is used little. Perhaps a more detailed measure is required. There should be some twitter datasets, as I have seen other posts use such features.

statsmodels.tsa.seasonal.seasonal_decompose in Python might be able to help some in removing seasonality.  I haven't used it extensively, though.  I've been distracted and still haven't dug into the data yet to try it!  I'm so behind.



given that the vaccine will now be released during the competition judging.  

measures like stimulus checks probably don't have a measurable impact on the spread of the virus.

Coronavirus Retail Restrictions by State

Curious how China published a study about air conditioning and covid spread: https://wwwnc.cdc.gov/eid/article/26/7/20-0764_article and Korea validates a similar study just recently: https://www.latimes.com/world-nation/story/2020-12-09/five-minutes-from-20-feet-away[…]south-korean-study-shows-perils-of-indoor-dining-for-covid-19 - i wonder when we will start to see raised floors in restaurants and data-center-like circulation ... (edited) 


https://nrf.com/coronavirus-retail-restrictions-state
---

## LSTM example 'data' directory

----
## linear PCA

i actually tried a polynomial kernel PCA and that was mistake. The model inflates exponentially (of course) so it runs out of memory fast. I remember a degree=3 kPCA needing around 32GB  .... it crashed on my laptop. didn't try it on our beefier hardware ....


----

## innovation, generality, collaboration, and other qualitative judging criteria



---
**Tool for validation of submission**

Teams are highly encouraged to run this notebook to validate their submissions: https://github.com/leaf-ai/covid-xprize/blob/master/predictor_robojudge.ipynb 

Additionally, you can manually run a prediction by using the .schedule/run.sh from your home directory. You should then be able to see the results by viewing ~/work/predictions/.  Any issues encountered while running your model will be reported to ~/work/predictions/logs/, so please check this if you do not see your results on the leaderboard.


Have you evaluated your results against any other published models, like the 30 or so on the CDC website? I was planning to evaluate this as well to see if I can glean anything from the better models from Universities.

https://www.cdc.gov/coronavirus/2019-ncov/covid-data/forecasting-us.html

Yep. If you follow the links-- each model has a GIT repo or a website explaining the model. You can see that their aggregate model hasn't been very good at predicting in the past. But they let anyone contribute and don't weigh the aggregate by past performance so I think some of them are probably good and some pretty bad- leading to chaos in the aggregate. I was planning to identify the better predictors and see what they did and potentially incorporate some ideas. https://covid.cdc.gov/covid-data-tracker/?fbclid=IwAR2Ky2Oo4EGumW0t9Of_GRVX5YKiH1XiXIgoW_sF5sZPvyQ2QCGjqg5vOMQ#forecasting_weeklycases (edited) 


i've been working on validating my data against the xprize-github's linear predictor as a smoke test

so far I've beat it with 2x accuracy 2x accuracy (half the error)

You should evaluate it per 100000 population. The raw MSEs are not really informative.



------

**Testing: Scenario Generators**

Teams are highly encouraged to use the scenario generators found on the GitHub repository to try out different evaluation scenarios before submitting their models. Instructions on how to use these scenario generators to test models can be found within the sample models provided by Cognizant on the GitHub repository.


 Note: the historical cases are not explicitly an input to the predictor. The predictor can, however,
save and access the historical case data up to the starting point of the evaluation in the evaluation
sandbox work folder. It can then use its own predictions in lieu of actual cases for the active
evaluation period. In this manner, its predictions can be based on parallel time series of case history
and intervention plan history up to the current point in time.


the data from submissions will be ranked
in each region according to the cumulative error in the 7-day moving average for the number of
cases per 100,000 people.

two overall performance measures will be formed. These
are the:
● Mean ranking of teams across all regions
● Mean ranking of teams across the specialty regions, if selected


my understanding is that there will be 3 types of tests:


* Tests on historic data to see the performance of the model
* Tests on data from Dec 22nd to Jan 11th -- to see the performance in the 'near future' and be able to validate it with the real data
* Tests of hypothetical future scenarios (beyond Jan 11th) where they will create different NPIs scenarios and they want to see how the models perform


Teams will have their work subject to the following sanity checks:
● Ranking on retrospective runs on historical intervals, representing a broader range of
situations than encountered in live testing
● Other predictor sanity check pass/fail results (e.g., negative predictions, maximal and
minimal stringency predictions, and predictions exceeding population size)



For each day in the 180-day evaluation period, the prescriptor is called with the date and weights
as specified above, obtaining prescriptions for each region. They are evaluated along the two
objectives:
● The standard predictor is called to estimate the number of cases for each region; and
● The total intervention plan stringency is calculated for each region using the Oxford
University Blavatnik School of Government’s COVID-19 Government Response Tracker
Stringency Index formula, with the specified weights for the region.

The weights for each region are drawn from a uniform distribution within [0..1] and normalized to sum up to one. The process is repeated three times with different weights and the results are
averaged. The same three sets of weights are used to evaluate all prescriptors. Additionally, a case where all weights are equal is used as a separate base-case evaluation. The predictions and
stringency will be averaged over the 180-day period to obtain the final objective values (i.e., cases and stringency) for the prescriptor for each region.


Results with both the base case (with equal weights) and the general case (with random weights)
will be presented to the judges as the outcome of the first quantitative evaluation.







---
## Model Evaluation Results

In their predictions, teams are encouraged to produce interesting results and show them.

"what is going to happen from Dec 22 to Jan 13"


JUDGING CRITERIA Equal weighting

**Innovation to extend scope of challenge ** 
Teams who submit and use additional data, intervention plans (such as
vaccination policies and treatments), or otherwise find innovative ways to extend the scope
of the challenge will be ranked highly;

- How long does someone with COVID-19 typically stay on a ventilator? Some people may need to be on a ventilator for a few hours, while others may require one, two, or three weeks. If a person needs to be on a ventilator for a longer period of time, a tracheostomy may be required. During this procedure, a surgeon makes a hole in the front of the neck and inserts a tube into the trachea.

- N95 masks can be rotated every 3–4 days, heated for 60 min, steamed or boiled for 5 min, and then air-dried. These methods retain 92.4–98.5% filtering efficiency (FE). Using soap and water or medical grade alcohol significantly decreases the FE of the masks (54% and 67%, respectively).

- Can a person become re-infected with COVID-19 within 3 months of recovery?
Review of currently available evidence suggests that most individuals do not become re-infected within 3 months of resolution of SARS-CoV-2 infection.

- 14 day self-quarantine.  You should still self-quarantine for 14 days since your last exposure. It can take up to 14 days after exposure to the virus for a person to develop COVID-19 symptoms. A negative result before end of the 14-day quarantine period does not rule out possible infection. By self-quarantining for 14 days, you lower the chance of possibly exposing others to COVID-19.

- Contact Tracing Apps. Contact tracing is an effective disease control strategy that involves identifying cases and their contacts then working with them to interrupt disease transmission. This includes asking cases to isolate and contacts to quarantine at home voluntarily. Contact tracing is a key strategy to prevent the further spread of COVID-19.

- Incubation Time Period- Typically, a person develops symptoms 5 days after being infected, but symptoms can appear as early as 2 days after infection or as late as 14 days after infection, and the time range can vary.

- It typically takes a few weeks for the body to build immunity after vaccination. That means it's possible a person could be infected with the virus that causes COVID-19 just before or just after vaccination and get sick. This is because the vaccine has not had enough time to provide protection.

- Call 911 or call ahead to your local emergency facility: Notify the operator that you are seeking care for someone who has or may have COVID-19.

- # of Critical Covid cases: In critical COVID-19 -- about 5% of total cases -- the infection can damage the walls and linings of the air sacs in your lungs. As your body tries to fight it, your lungs become more inflamed and fill with fluid. This can make it harder for them to swap oxygen and carbon dioxide.

- Early vs Late stage covid19 trials 

- how it spreads, infects, and sickens 

Genetics, other health conditions, sex hormones, 

VACCINATION 

- Tracking COVID-19 vaccination rates:https://ourworldindata.org/covid-vaccinations
- Vaccine development: vaccines approved for use and in clinical trials
- Vacine canidates, trial deadlines, vacine diswtrubution, vacine implementation 


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


## Non Technical Conclusion 
ACTIONS 
What can I do to keep my immune system strong during the COVID-19 pandemic?
Don't smoke or vape.
Eat a diet high in fruits, vegetables, and whole grains.
Take a multivitamin if you suspect that you may not be getting all the nutrients you need through your diet.
Exercise regularly.
Maintain a healthy weight.
Control your stress level.
Control your blood pressure.
If you drink alcohol, drink only in moderation (no more than one to two drinks a day for men, no more than one a day for women).
Get enough sleep.
Take steps to avoid infection, such as washing your hands frequently and trying not to touch your hands to your face, since harmful germs can enter through your eyes, nose, and mouth.


TREATMENT

Current clinical management of COVID-19 includes infection prevention and control measures and supportive care, including supplemental oxygen and mechanical ventilatory support when indicated. The U.S. Food and Drug Administration (FDA) has approved one drug, remdesivir (Veklury), for the treatment of COVID-19 in certain situations.

Right now, CDC recommends COVID-19 vaccine be offered to healthcare personnel and residents of long-term care facilities.

There is currently a limited supply of COVID-19 vaccine in the United States, but supply will increase in the weeks and months to come.

Cost is not an obstacle to getting vaccinated against COVID-19.

https://www.cdc.gov/coronavirus/2019-ncov/vaccines/8-things.html

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


-------

## Technical Conclusion 

"THIS CHALLENGE COULD BE A GAME CHANGER WHEN IT COMES TO USING DATA AND AI TO CREATE A ROUTE TO RECOVERY."

Ai and humans need to work together

Cooperation between agents, in this case algorithms and humans, depends on trust. If humans are to accept algorithmic prescriptions, they need to trust them. 

Thus, the second quantitative evaluation addresses an important and novel aspect of the
competition: it is a community effort. Team contributions are brought together into a common
population, and a modern machine learning discovery method is used to find synergies and
compatible innovations to achieve better performance than would otherwise be possible.

machine-generated prescriptions may provide policymakers and public health officials with
actionable locally-based, customized, and least restrictive intervention recommendations, such as mandatory masks and reduced restaurant capacity.


---

## References 
https://www.who.int/news/item/13-10-2020-impact-of-covid-19-on-people's-livelihoods-their-health-and-our-food-systems
https://en.wikipedia.org/wiki/Economic_impact_of_the_COVID-19_pandemic#Economic_impact_by_region_and_country
https://home.kpmg/xx/en/home/insights/2020/03/the-business-implications-of-coronavirus.html
https://www.cdc.gov/coronavirus/2019-ncov/cdcresponse/index.html


Free to access  papers related to Covid19 thanks to 

To support the research community, Springer Nature and many other publishers have already decided to make thousands of publications on coronavirus freely available to accommodate the need for access to essential research. 

https://www.ncbi.nlm.nih.gov/research/coronavirus/
https://www.sciencedirect.com/articlelist/covid
https://novel-coronavirus.onlinelibrary.wiley.com/
https://taylorandfrancis.com/coronavirus/
https://www.springernature.com/gp/researchers/campaigns/coronavirus
https://academic.oup.com/journals/pages/coronavirus
https://coronavirus.1science.com/search
https://en.wikipedia.org/wiki/Explainable_artificial_intelligence
https://medium.com/@alkali.app/glass-box-models-a-gentle-introduction-2f39589c09d1
https://hdsr.mitpress.mit.edu/pub/f9kuryi8/release/6

https://www.technologyreview.com/2020/01/29/304857/why-asking-an-ai-to-explain-itself-can-make-things-worse/

