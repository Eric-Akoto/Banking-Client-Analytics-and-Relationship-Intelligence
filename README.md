# Banking Client Analytics and Relationship Intelligence: An Interactive Power BI Dashboard
## Table Of Content
   - [Project Overview](project-overview)
   - [Problem Statement](problem-statement)
   - [Dataset Details](dataset-details)
   - [Objectives of the Project](objectives-of-the-project)
   - [Processes](processes)
   - [Analytical Insights & Recommendations](analytical-insights-&-recommendations)
   - [Conclusion](conclusion)

## Project Overview
The Banking Client Analytics and Relationship Intelligence Project is a comprehensive data-driven initiative designed to analyze the financial behaviors, demographic patterns, and relationship dynamics of banking clients. Using integrated datasets from multiple sources, including banking-client profiles, investment advisor assignments, gender classifications, and bank relationship performance, this project provides a holistic view of customer engagement and financial activity across different banking segments.

The project leverages Power BI for interactive visualization and data modeling to uncover key insights into client demographics, advisor performance, income segmentation, and product usage trends

<img width="1025" height="574" alt="screenshot 1" src="https://github.com/user-attachments/assets/502db786-09f2-47ac-94f5-8bcf6a1b7e7f" />

## Problem Statement
Financial institutions handle massive volumes of client data spanning demographics, financial behavior, account activity, and relationship management. However, this data is often fragmented across systems, limiting its use in strategic decision-making.\
As a result, banks face challenges in identifying high-value clients, managing risks, and optimizing advisor performance.

This project addresses these challenges by analyzing a comprehensive banking client dataset to uncover meaningful patterns, correlations, and insights. The goal is to clean, prepare and transform raw client and transaction data into actionable intelligence that supports decisions in customer segmentation, risk management, and financial advisory optimization.

## Dataset Details
The dataset basically consists of information about bank and various client details in multiple tables which are interlinked with each other through primary and foreign keys.\
The various tables are: Banking-Client, Banking Relationship, Gender and Investment Advisors.

---
### 1. Banking-Client Table
This table consists of 25 Columns and 3000 Rows, detailing the demographic and account level information for all clients.\
**Primary Key:** `Client ID`
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| `Client ID` | String | Unique identifier for each client. |
| `Name` | String | Full name of the client. |
| `Age` | Integer | Client’s age. |
| `Location ID` | Integer | Code representing client’s regional or branch location. |
| `Joined Bank` | Date | Date the client joined the bank. |
| `Banking Contact` | String | Relationship manager assigned to the client. |
| `Nationality` | String | Client’s nationality. |
| `Occupation` | String | Client’s occupation or job title. |
| `Fee Structure` | Categorical | Service fee type. |
| `Loyalty Classification` | Categorical | Loyalty tier. |
| `Estimated Income` | Float | Estimated annual income. |
| `Superannuation Savings` | Float | Retirement or pension savings. |
| `Amount of Credit Cards` | Integer | Number of credit cards held. |
| `Credit Card Balance` | Float | Total outstanding balance. |
| `Bank Loans` | Float | Total loan amount. |
| `Bank Deposits` | Float | Total deposit value. |
| `Checking Accounts` | Float | Balance in checking accounts. |
| `Saving Accounts` | Float | Balance in savings accounts. |
| `Foreign Currency Account` | Float | Foreign currency account balance. |
| `Business Lending` | Float | Value of business-related loans. |
| `Properties Owned` | Integer | Number of properties owned by client. |
| `Risk Weighting` | Integer | Internal risk rating. |
| `BRId` | Integer | Foreign Key → Banking Relationship. |
| `GenderId` | Integer | Foreign Key → Gender. |
| `IAId` | Integer | Foreign Key → Investment Advisor. |
---
### 2. Banking Relationship
This table consists of 2 Columns and 4 Rows, which tracks advisor-client relationships, engagement duration, and financial interactions.\
**Primary Key:** `BRId`
| Column | Type | Description |
|--------|------|-------------|
| `BRId` | Integer | Unique ID for banking relationship type. |
| `Banking Relationship` | String | Relationship category. |
---
### 3. Gender
This table consists of 2 Columns and 2 Rows, mapping client identities to gender classifications for demographic segmentation.\
**Primary Key:** `GenderId`
| Column | Type | Description |
|--------|------|-------------|
| `GenderId` | Integer | Unique gender ID. |
| `Gender` | String | Gender category. |
---
### 4. Investment Advisors
This table consists of 2 Columns and 22 Rows, providing information on financial advisors, their regions, client counts, and performance.\
**Primary Key:** `IAId`
| Column | Type | Description |
|--------|------|-------------|
| `IAId` | Integer | Unique advisor ID. |
| `Investment Advisor` | String | Full name of the investment advisor. |
---

## Objectives of the Project
The objectives of this project are to:\
**- Understand Client Behavior:** Identify patterns in deposits, loans, and credit card usage across gender, income levels, and regions.\
**- Measure Relationship Performance:** Evaluate investment advisor effectiveness using engagement length, total fees, and client retention metrics.\
**- Enhance Segmentation & Targeting:** Develop client segments based on demographics, financial activity, and relationship value to support personalized banking strategies.\
**- Support Data-Driven Decisions:** Provide business leaders with visual dashboards that highlight key performance indicators (KPIs) and help optimize client-advisor allocation.

## Processes
**Step 1: Data Cleaning & Preparation**\
  **Tools:** MySQL
  - Standardized data typed (e.g. Date)
  - Added new columns to the Banking-Client table.

**Step 2: Data Modelling**\
  **Tools:** Power BI Data Model & DAX
  - Defined relationship between tables: Banking-Client, Banking Relationship, Gender and Investment Advisors.
  - Created measures using DAX for KPIs.

**Step 3: Analysis & Dashboard Creation**\
  **Tools:** Power BI Visualization features
  - Created KPIs to track relevant metrics.
  - Interactive dashboards with slicers were built to reveal insights into deposits, loans, income distribution, and engagement.

## Analytical Insights & Recommendations
**Key Performance Indicators**\
 **- Total Clients:** 2,940 Clients\
 **- Total Deposit:** Approximately $3.77bn\
 **- Total Loan:** Approximately $4.38bn\
 **- Total Fees:** Approximately $158.19M\
 **- Engagement Length:** Approximately 16.68M Days

<img width="1026" height="572" alt="screenshot 2" src="https://github.com/user-attachments/assets/68238571-97fc-430a-bb56-c8ca133c4333" />

**Insights/Findings**
 - The Total Loan portfolio amounts to $4.38 billion, with the majority held in Business Lending ($2.60bn) and Bank Loan ($1.77bn).
 - Total Deposit amount to approximately $3.77 billion, with Bank Deposit being the largest component ($2.01bn).
 - From the charts, Total Loan fluctuate throughout the year, with significant peaks in March, October, and December. The highest performance occurs in December, while February and May are the weakest months. Total Deposit also fluctuate throughout the year, with significant peaks in July, August, and October. The highest performance occur in August, while February and May are the weakest months.
 - Gender-based analysis reveals that female clients contribute higher deposit ($1.90bn) and equal loan ($1.19bn) volumes to male clients ($1.87bn deposits, $1.19bn loans).
 - High-income and long-tenure clients generate the majority of the bank’s profits.
 - New and low-income clients contribute less financially but represent untapped potential for growth.
 - The bank manages an extensive client base of over 2,900 clients, distributed across diverse demographic and geographic segments.
 - European clients represent the dominant market, contributing approximately $1.6bn in total value. Asian and American clients follow closely, with aproximately $1.0bn and $0.6bn respectively, while African and Australian markets remain underdeveloped.

<img width="1026" height="573" alt="screenshot 3" src="https://github.com/user-attachments/assets/8e5da2d3-d62f-44a0-a166-c0bcecf29f23" /><img width="1025" height="573" alt="screenshot 4" src="https://github.com/user-attachments/assets/93ad9730-77cf-4b01-814b-e7be07bfb2e9" />



**Recommendations**
 - Diversify loan offerings to increase consumer and small-business lending, reducing reliance on large business clients.
 - Promote savings and fixed deposit products with competitive interest rates and loyalty bonuses to stabilize deposit bases and improve retention.
 - Strengthen client retention programs targeting mid-tenure clients (5–10 years) to transition them into high-value, long-term relationships.
 - Implement region-specific growth initiatives in African and Australian markets, focusing on awareness, accessibility, and product adoption.
 - Launch targeted programs for male clients to increase participation in credit and investment products, possibly through microfinance and mentorship initiatives.

## Conclusion
The combined findings from the datasets and Power BI analysis reveal that client engagement length, income segmentation, and advisor effectiveness are the most influential factors in determining overall banking performance.

By implementing the above recommendations,the bank can significantly enhance profitability, customer satisfaction, and strategic agility.
