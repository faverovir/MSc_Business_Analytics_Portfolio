# Customer Purchase Behaviour Analysis – Electronic Retail Dataset
_**The content of this project is experimental and evolving, refinements and fixes are currently in progress.**_

## Business Problem
This study explores what truly drives customer spending, satisfaction, and value in an electronics retail business by evaluating whether loyalty programmes, operational decisions, and pricing strategies meaningfully influence purchase behavior and revenue growth.
- RQ1: How do sociodemographic factors associate with loyalty membership, and what is the causal effect of membership on the purchase amount?
- RQ2: Which product and transaction characteristics (e.g., product type, order status, shipping type) affect product ratings?
- RQ3: How do product prices and add-ons influence final prices, and does price sensitivity vary across product types?


## Dataset
The analysis used a transactional dataset from an electronics retailer covering September 2023 to September 2024. It included customer demographics, loyalty membership status, transaction details, product ratings, pricing variables, and add-on purchases. Feature engineering created additional variables such as Full Price (total order value including add-ons) and Add-on Count, while categorical variables were encoded for econometric modeling.

## Methods Used
### Propoensity Score Matching (PSM): 
PSM with logistic regression was used to estimate the causal effect of loyalty membership on purchase amount by matching loyalty members and non-members with similar observable characteristics, reducing selection bias and generating an Average Treatment Effect on the Treated (ATT).

### Multinomial Logistic Regression:
A multinomial logit model was applied to evaluate how product and transaction characteristics, including product type, shipping type, order status, quantity, and month, influenced customer ratings (1–5), with Rating 3 as the reference category.

### Two-Stage Least Squares (2SLS) + Log-Log Regression:
To measure price elasticity while correcting for price endogeneity, a 2SLS framework used average product-month price as an instrumental variable. This estimated how unit price, quantity, and add-ons affected final expenditure, while also testing elasticity differences across product categories.


## Key Findings
- Loyalty membership had no statistically significant causal effect on spending, suggesting the current programme attracts customers without changing purchase behavior.
- Product ratings were largely unaffected by observable transaction factors such as shipping, order status, or product type, indicating satisfaction may depend more on unobserved variables like product quality or expectations.
- Price and quantity were the strongest drivers of expenditure, with demand remaining inelastic across all product categories, though laptops showed the lowest price sensitivity (best premium pricing potential) while headphones were the most price-sensitive.
- Add-ons contributed positively to revenue, but their impact was relatively small.

<img width="634" height="454" alt="Screenshot 2026-05-02 at 12 12 14" src="https://github.com/user-attachments/assets/9fd6baed-53ec-4a2a-b7e2-ecec24c2732c" />

<img width="634" height="447" alt="Screenshot 2026-05-02 at 12 12 31" src="https://github.com/user-attachments/assets/fe24959b-cd73-4c0c-986d-dfcabb8509cf" />

<img width="634" height="483" alt="Screenshot 2026-05-02 at 12 12 52" src="https://github.com/user-attachments/assets/62768ddc-c8e9-40a4-a6e6-d575065c3b17" />



## Business Recommendations
The retailer should reassess the current loyalty programme, as it does not appear to generate meaningful increases in customer spending, and consider redesigning it with stronger incentives or engagement mechanisms. Greater strategic emphasis should be placed on improving product quality, customer experience, and brand perception rather than overinvesting in operational factors such as faster shipping, which showed limited influence on customer satisfaction. Pricing strategies should also be more product-specific, leveraging premium pricing opportunities for less price-sensitive categories while maintaining competitive pricing for more price-sensitive products. Overall, a more targeted approach to pricing and customer engagement is likely to yield stronger commercial outcomes than broad investments in loyalty or logistics alone.

_Team-developed project, contributor details available upon request._



## Skills Demonstrated
R | Python | Econometrics (Causal Inference, Statistical Modelling) | Pricing Analysis | Customer Behaviour
