# Customer Churn Analysis (Telecom Dataset)

## Business Problem
Customer attrition is a critical challenge in subscription-based businesses, directly impacting recurring revenue and long-term profitability. In this case, the telecom company is experiencing a churn rate of approximately 26.5%, meaning that more than one in four customers leave within the observed period.

The objective of this project is to determine whether churn follows identifiable patterns, to understand the key drivers behind customer departures, and to identify actionable strategies that can reduce attrition before it occurs.


## Dataset
The analysis is based on a telecom customer dataset containing 7,043 observations. The dataset includes a mix of demographic information, service usage details, billing data, and customer tenure.

In addition to the original features, several derived variables were created to support analysis, including tenure groupings, estimated customer lifetime value (CLV), and revenue at risk. These enhancements enabled both descriptive and predictive insights into customer behaviour.


## Methods Used
### Exploratory Data Analysis:
Initial analysis focused on understanding relationships within the data. This included correlation analysis, statistical testing (chi-square tests), and the creation of derived features to better capture customer lifecycle dynamics and financial exposure.

### Causal Inference:
To move beyond correlation and identify true drivers of churn, three causal inference techniques were applied:
- Regression Discontinuity Design (RDD) to evaluate pricing thresholds
- Difference-in-Differences (DiD) to assess the impact of contract types over time
- Two-Stage Least Squares (2SLS) to examine the effect of service adoption
These methods allowed for stronger conclusions about which factors directly influence churn.

### Machine Learning:
Predictive models were developed to identify high-risk customers, including Logistic Regression, Random Forest, and XGBoost. Model performance was evaluated using metrics such as AUC, precision, recall, and lift, with Logistic Regression providing the best overall balance between interpretability and predictive power.


## Key Findings
- Customer churn is not random; it is concentrated within specific segments of the customer base.
- Contract type is the strongest driver of churn:
  - Customers on month-to-month contracts exhibit significantly higher churn rates
  - Longer-term contracts (one- and two-year) are strongly associated with retention
- Customer tenure plays a critical role:
  - Churn is highest during the first 12 months
  - Retention improves substantially as tenure increases
- Pricing has a measurable and causal impact on churn:
  - A pricing threshold at approximately $61/month leads to a sharp increase in churn probability
  - Customers above this threshold are significantly more likely to leave
- Add-on services contribute to retention:
  - Services such as online security and technical support are associated with lower churn
  - These features increase perceived value and switching costs
- Demographic factors are less influential than service and pricing variables: Customer behavior is driven more by contract terms, pricing, and service usage than by personal characteristics
- Predictive modeling significantly improves churn detection:
  - The best-performing model (Logistic Regression) achieved an AUC of ~0.84
  - Approximately 80% of churners can be correctly identified
- Targeting efficiency is substantially improved:
  - Model-driven targeting is nearly 3x more effective than random outreach
  - High-risk customers can be prioritized for intervention with measurable impact

Some of the main charts: 
<img width="498" height="518" alt="Screenshot 2026-05-04 at 20 06 46" src="https://github.com/user-attachments/assets/43cd491b-05e6-4eda-9fcb-96b8639c1132" />

<img width="391" height="411" alt="Screenshot 2026-05-04 at 20 07 11" src="https://github.com/user-attachments/assets/64ad6ec0-6a43-46f2-b4e6-8977ecff9317" />

<img width="416" height="441" alt="Screenshot 2026-05-04 at 20 07 19" src="https://github.com/user-attachments/assets/c78de261-6232-4ec4-af12-9da8d4e5eed4" />

<img width="620" height="286" alt="Screenshot 2026-05-04 at 20 07 57" src="https://github.com/user-attachments/assets/a31c7f34-ff5c-43ae-a966-4cfa49b77f5f" />



## Business Recommendations
First, the company should prioritise encouraging customers to transition to longer-term contracts by offering meaningful incentives and emphasising value over short-term flexibility. Second, the early stages of the customer lifecycle should be treated as a critical retention window, with structured onboarding and proactive engagement initiatives.

Pricing strategy should also be refined to address the identified threshold effect, ensuring that customers are not unintentionally pushed into high-risk pricing tiers. In parallel, bundling value-added services into core offerings can increase perceived value and reduce the likelihood of churn.

Finally, integrating predictive modelling into operational workflows would allow the business to identify high-risk customers in real time and target retention efforts more effectively, ensuring that resources are allocated where they have the greatest impact.


## Skills Demonstrated
Python | Tableau
