# Banking-Client-Analytics-and-Relationship-Intelligence
## Project Overview
The Banking Client Analytics and Relationship Intelligence Project is a comprehensive data-driven initiative designed to analyze the financial behaviors, demographic patterns, and relationship dynamics of banking clients. Using integrated datasets from multiple sources, including client profiles, advisor assignments, gender classifications, and relationship performance, this project provides a holistic view of customer engagement and financial activity across different banking segments.

The project leverages Power BI for interactive visualization and data modeling to uncover key insights into client demographics, advisor performance, income segmentation, and product usage trends

## Problem Statement
Financial institutions handle massive volumes of client data spanning demographics, financial behavior, account activity, and relationship management. However, this data is often fragmented across systems, limiting its use in strategic decision-making.\
As a result, banks face challenges in identifying high-value clients, managing risks, and optimizing advisor performance.

This project addresses these challenges by analyzing a comprehensive banking client dataset to uncover meaningful patterns, correlations, and insights. The goal is to clean, prepare and transform raw client and transaction data into actionable intelligence that supports decisions in customer segmentation, risk management, and financial advisory optimization.

## Dataset Details
The dataset basically consists of information about bank and various client details in multiple tables which are interlinked with each other through primary and foreign keys.\
The various tables are: Banking-Client, Banking Relationship, Gender and Investment Advisor.

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
This table consists of 2 Columns and 
| Column | Type | Description |
|--------|------|-------------|
| `BRId` | Integer | Unique ID for banking relationship type. |
| `Banking Relationship` | String | Relationship category. |
