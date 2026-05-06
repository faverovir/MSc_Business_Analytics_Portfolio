# Big Data & AI Transformation - AI Governance & Behavioural Nudging System – Case: SHELL

## Business Problem
This project addressed Shell’s challenge of managing fragmented, siloed, and operationally complex data across its global upstream, downstream, and human capital systems. With SAP acting as a central but often inaccessible system, Shell faced inefficiencies in cross-functional collaboration, delayed decision-making, inconsistent governance, and underutilised data potential. The objective was to design an enterprise-wide big data and AI strategy that transforms Shell’s data from disconnected operational assets into a unified, scalable, and governance-driven system that improves efficiency, supply chain resilience, workforce transparency, and sustainability performance.


## Dataset
The proposed strategy would integrate diverse structured, semi-structured, and unstructured datasets across three major domains: upstream operational data (seismic, drilling, telemetry, production, compliance), downstream supply chain and customer data (refining, logistics, POS, CRM, supplier ESG, Ferrari marketing engagement), and human capital data (Workday, SAP SuccessFactors, Jira, Azure DevOps, HR, DEI, payroll, and performance records). These data streams would be processed through secure ingestion pipelines, AWS-based enterprise data lakes, SAP ERP systems, and domain-specific marts to create a centralised Shell Master Data Repository.

## Methods Used
### Enterprise Data Architecture Design:
A proposed hybrid cloud strategy combining SAP as the single source of truth with AWS data lakes, SQL master repositories, domain-specific marts, and real-time/batch ETL pipelines was designed to standardise data flows, reduce fragmentation, and democratise secure cross-functional access. This included structured ingestion, metadata harmonisation, anomaly detection, and governance layers across upstream and downstream systems.

Data Architecture - Upstream - Pre-Production:
<img width="768" height="307" alt="Screenshot 2026-05-03 at 14 48 41" src="https://github.com/user-attachments/assets/d8c8ee3d-f7bd-4dcc-a2a2-c6922ad60614" />

Data Architecture - Upstream - Active Production:
<img width="768" height="251" alt="Screenshot 2026-05-03 at 14 49 41" src="https://github.com/user-attachments/assets/7c18d93f-61a0-49e5-b4f6-d3ec9c2897b7" />

Data Architecture - Downstream:
<img width="781" height="303" alt="Screenshot 2026-05-03 at 14 50 07" src="https://github.com/user-attachments/assets/861ef581-19ff-48d0-b81f-efa9c7ce6753" />

### Predictive Analytics & AI Decision Support:
The framework would incorporate predictive analytics, machine learning, anomaly detection, segmentation models, and customer intelligence systems to optimise production, supply chains, emissions, premium fuel conversion, and workforce planning while maintaining human oversight in safety-critical or compliance-sensitive decisions.

### Human Data Governance & Identity Resolution:
A Global Person ID (GPID) framework would be introduced to unify employee and contractor identity across HR, SAP, project management, and DEI systems, enabling more transparent hiring, performance, attrition, and governance analytics while reducing managerial bias and improving workforce strategy.
<img width="802" height="409" alt="Screenshot 2026-05-03 at 14 51 45" src="https://github.com/user-attachments/assets/b27e44c0-c773-4c92-a66c-8edd2ef17e02" />



## Key Findings
- Shell’s largest data challenge is not data scarcity, but fragmentation, redundancy, and limited accessibility across verticals.
- A unified master data strategy can significantly improve decision speed, reduce operational friction, and increase visibility across upstream, downstream, and HR systems.
  - In upstream, structured pre-production and production architectures improve exploration speed, regulatory compliance, and downtime reduction.
  - In downstream, real-time supply chain and customer intelligence systems create stronger resilience, ESG performance, and commercial conversion opportunities—particularly through Shell’s Ferrari partnership.
  - In HR, GPID-based integration improves workforce transparency, talent mobility, DEI governance, and managerial fairness. Overall, the strategy shifts Shell from retrospective reporting toward real-time, AI-supported enterprise control.

Conclusive Strategy: 
<img width="802" height="423" alt="Screenshot 2026-05-03 at 14 52 29" src="https://github.com/user-attachments/assets/7722cb8d-dacb-4a2c-ad72-8c60e102ce9a" />


## Business Recommendations
Shell should prioritise building a central Master Data Repository supported by AWS and SAP integration to reduce fragmentation and create a single, scalable data foundation across all business units. Rather than relying on isolated systems, the company should focus on making data more accessible, standardised, and actionable for both technical and non-technical teams. Upstream and downstream strategies should be supported by predictive analytics and real-time decision tools, while HR should implement GPID to improve workforce transparency and governance. Equally important, Shell should maintain strong governance, privacy, and ethics controls so that AI and analytics enhance decision-making without compromising compliance or trust. By combining operational efficiency with governance and sustainability, Shell can transform data into a long-term strategic advantage rather than a source of organisational friction.


## Skills Demonstrated
Enterprise Data Strategy | Big Data Architecture Design | ETL Pipeline Planning | Data Governance | AI Systems Design 
