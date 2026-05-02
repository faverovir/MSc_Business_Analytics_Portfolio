# Customer Churn Prediction for Retail Banking
Built end-to-end churn prediction models using customer demographics, financial behaviour, and engagement data to identify high-risk, high-value banking customers. Applied feature engineering, SMOTE balancing, logistic regression, random forest, and segmentation to generate actionable retention strategies aimed at reducing churn.

## Business Problem
The bank faces significant revenue loss and rising customer acquisition costs due to a churn rate of approximately 20%. Analysis showed that churn is driven less by financial instability and more by disengagement among financially stable, high-balance customers. The project’s primary goal was to identify the strongest drivers of churn using customer demographics, financial indicators, and engagement behaviors, then reduce churn by 15% through targeted, data-driven retention strategies.

[Link to GitHub Repo]([https://github.com/masterbr535/AnalyticsInPracticeGrp3])


## Dataset
The analysis used over 10,000 customer records with churn as the binary target variable (1 = churned, 0 = retained). Features included demographics, account information, and financial variables.

## Methods Used
### Data Caleaning, Validation, Train/Test Split: 
Cleaning raw customer records through range assertions, null checks, and duplicate removal to ensure data quality and analytical reliability. An 80/20 stratified train-test split was applied to preserve the original churn ratio and improve model evaluation accuracy.

### Feature Engineering & Preprocessing:
Four new domain-relevant features were created to better capture behavioral signals, such as balance exposure and product engagement. Numeric scaling and categorical encoding were then applied using a ColumnTransformer pipeline.

### Class Imbalance Handling:
Class imbalance correction was necessary due to lower churn prevalence. SMOTE was applied only to the training set to correct the original 80/20 churn imbalance and produce a balanced 50/50 training distribution without introducing data leakage


## Key Findings
- Churn was strongly linked to low engagement rather than low customer value.
- High-risk groups included German customers, females, customers aged 50–60, inactive members, and high-balance individuals with weak product engagement.
- Product ownership showed a non-linear effect: two products minimized churn, while over-selling (3-4 products) sharply increased churn risk.
- The most valuable insight: high-value customers with low engagement represented the bank’s greatest churn threat, making retention highly segment-specific and predictable.

<img width="484" height="657" alt="Screenshot 2026-05-02 at 11 14 46" src="https://github.com/user-attachments/assets/5202bc15-c8ce-4d0c-94c1-cb41e223c483" />


## Business Recommendations
To reduce churn, the bank should focus less on broad customer acquisition and more on keeping its most valuable customers engaged. This means offering personalized support to high-balance, high-risk customers, encouraging stronger product engagement through the right mix of services, and improving retention at every stage of the customer journey, from onboarding to long-term loyalty. More tailored strategies for high-risk markets like Germany, older customers, and inactive users can help the bank build stronger relationships, improve customer satisfaction, and protect long-term revenue more effectively.


## Skills Demonstrated
Project Management | Git | Python | HTML Dashboards
