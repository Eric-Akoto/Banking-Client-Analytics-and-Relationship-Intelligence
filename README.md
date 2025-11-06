# Banking Client Analytics and Relationship Intelligence: An Interactive Power BI Dashboard
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
| `Joined Bank` | Date (DD-MM-YYYY) | Date the client joined the bank. |
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

## Analytical Insights
**Key Performance Indicators**
 **- Total Clients:** 2,940 Clients
 **- Total Deposit:** Approximately $3.77bn
 **- Total Loan:** Approximately $4.38bn
