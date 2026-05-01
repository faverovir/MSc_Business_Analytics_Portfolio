# Data-Driven Marketing Decisions: Banking Campaign Analytics
Analysed 45,000+ customer records from a Portuguese bank to evaluate how customer targeting, campaign design, and timing influence term-deposit conversion and profitability. Applied segmentation, logistic regression (improving AUC from 0.64 to 0.90+), and EMV frameworks to identify high-ROI customer segments, optimise budget allocation, and redesign acquisition strategies around financially efficient targeting.

## Business Problem
The study seeks to assess how sociodemographic factors, contact strategy, and call timing jointly shape subscription outcomes and financial returns. 
Main question: How campaign impacts differ by sociodemographic group in term deposit marketing for a banking client?
- RQ1: How do sociodemographic factors associate with term deposit subscription propensity?
- RQ2: What is the comparative predictive power of demographic versus campaign execution variables?
- RQ3: Do campaign effectiveness patterns differ systematically across customer segments, requiring tailored strategies?
- RQ4: Which customer segments merit continued investment under a financially disciplined framework, accounting for both acquisition costs and customer value?


## Dataset
The analysis uses a dataset of 45,211 customer contacts from a European retail bank's term deposit campaign. The dataset captures 17 variables spanning demographics (age, occupation, education, marital status), financial position (account balance, existing products), and campaign characteristics (contact method, duration, frequency, historical outcomes).


## Methods Used
### Bivariate Profiling: 
Chi-square tests of independence assessed demographic-outcome associations.

### Predictive Modeling: 
Binomial logistic regression models were estimated with discrimination quantified via AUC.
- Model 1 (Demographics): Age band, job group, education, marital status.
- Model 2 (Campaign): Contact type, duration, frequency, previous contacts, historical outcome.
- Model 3 (Combined): All predictors from Models 1 & 2.

### Interaction Analysis: 
To test whether campaign tactics exhibit differential effectiveness across segments we estimated logistic models with interaction terms. Marginal effects were visualized to support strategic interpretation.

### Financial Decision Framework: 
We applied an Expected Monetary Value (EMV) analysis using both standard ($200 LTV) and balance-adjusted (Balance 5% margin) methodologies. 


## Key Findings
- Demographics matter, but selectively: Customers aged 60+ and those not in the labor force had the highest conversion rates, while younger and white-collar groups offered larger volume but lower response rates.
- Campaign execution drives success: Campaign-related factors (timing, call strategy, previous success) were far stronger predictors of subscription than demographics, with execution models dramatically outperforming demographic-only models.
- Timing and contact strategy are critical: March, October, and September were the strongest months for conversions, previous campaign success strongly increased future response, longer calls worked best for seniors, and excessive repeat contact reduced effectiveness.
- Profitability depends on segment quality, not just conversion: Only the Not-Labor-Force 60+ segment remained consistently profitable under realistic financial assumptions, while many seemingly strong segments became unprofitable once acquisition costs and balance value were considered.


## Business Recommendations
The bank should concentrate outbound phone calls on the highest EMV age/job segments particularly in the “Not-In-Labor-Force”, where longer calls are justified by both higher response and stronger balances. Large but low EMV groups, such as white collar, should be migrated to lower cost digital channels. Similarly, call frequency and duration for working age and blue collar segment should be capped. 
The EMV calculations should be refreshed regularly to maintain aligned with current profitability rather than being just a single campaign snapshot. 


## Skills Demonstrated
R | Excel-SPSS 

