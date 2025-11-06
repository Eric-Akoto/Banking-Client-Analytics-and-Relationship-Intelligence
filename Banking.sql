SET SQL_MODE = '';

# DATA CLEANING
SELECT *
FROM banking_clients;

-- CHANGING COLUMN NAMES
ALTER TABLE banking_clients
RENAME COLUMN `ï»¿Client ID` TO `Client ID`;

-- CHANGING "Joined Bank" COLUMN DATA TYPE FROM TEXT TO DATE
SELECT `Joined Bank`, 
	CASE WHEN `Joined Bank` LIKE '%-%' THEN DATE_FORMAT(STR_TO_DATE(`Joined Bank`, '%d-%m-%Y'), '%Y-%m-%d')
		ELSE NULL
	END date_form
FROM banking_clients;

UPDATE banking_clients
SET `Joined Bank` = CASE 
	WHEN `Joined Bank` LIKE '%-%' THEN DATE_FORMAT(STR_TO_DATE(`Joined Bank`, '%d-%m-%Y'), '%Y-%m-%d')
		ELSE NULL
END;

ALTER TABLE banking_clients
MODIFY COLUMN `Joined Bank` DATE;

-- ADDING NEW COLUMNS
-- 1. Engagement Days
ALTER TABLE banking_clients
ADD COLUMN `Engagement Days` INT;

UPDATE banking_clients
SET `Engagement Days` = TIMESTAMPDIFF(DAY, `Joined Bank`, CURDATE());

ALTER TABLE banking_clients
MODIFY `Engagement Days` INT AFTER `Joined Bank`;

SELECT *
FROM banking_clients;

-- 2. Engagement TimeFrame
ALTER TABLE banking_clients
ADD COLUMN `Engagement TimeFrame` TEXT;

UPDATE banking_clients
SET `Engagement TimeFrame` = CASE 
		WHEN `Engagement Days` < 1825 THEN "< 5 years"
		WHEN `Engagement Days` < 3650 THEN "< 10 years"
		WHEN `Engagement Days` < 7300 THEN "< 20 years"
		ELSE "> 20 years"
END;

ALTER TABLE banking_clients
MODIFY `Engagement TimeFrame` TEXT AFTER `Engagement Days`;

SELECT *
FROM banking_clients;

SELECT AVG(`Estimated Income`), MIN(`Estimated Income`), MAX(`Estimated Income`)
FROM banking_clients;

-- 3. Income Band
ALTER TABLE banking_clients
ADD COLUMN `Income Band` TEXT;

UPDATE banking_clients
SET `Income Band` = CASE 
		WHEN `Estimated Income` < 100000 THEN "Low"
		WHEN `Estimated Income` < 300000 THEN "Mid"
        ELSE "High"
END;

ALTER TABLE banking_clients
MODIFY `Income Band` TEXT AFTER `Estimated Income`;

SELECT *
FROM banking_clients;

-- 4. Processing Fees
SELECT `Fee Structure`, 
	CASE WHEN `Fee Structure` = "High" THEN 0.05
		WHEN `Fee Structure` = "Mid" THEN 0.03
        ELSE 0.01
	END `Processing Fees`
FROM banking_clients;

ALTER TABLE banking_clients
ADD COLUMN `Processing Fess` DOUBLE;

UPDATE banking_clients
SET `Processing Fess` = CASE 
		WHEN `Fee Structure` = "High" THEN 0.05
		WHEN `Fee Structure` = "Mid" THEN 0.03
        ELSE 0.01
END;

ALTER TABLE banking_clients
MODIFY `Processing Fess` DOUBLE AFTER `Fee Structure`;

-- IDENTIFYING DUPLICATES WITH CTE AND ROW_NUMBER() AND DELETING THEM
SELECT *,
	ROW_NUMBER() OVER(PARTITION BY `Client ID`, `Name`, `Age`, `Location ID`, 
		`Joined Bank`, `Engagement Days`, `Engagement TimeFrame`, `Banking Contact`, 
        `Nationality`, `Occupation`, `Fee Structure`, `Processing Fess`, `Loyalty Classification`, 
        `Estimated Income`, `Income Band`, `Superannuation Savings`, `Amount of Credit Cards`, `Credit Card Balance`, 
        `Bank Loans`, `Bank Deposits`, `Checking Accounts`, `Saving Accounts`, `Foreign Currency Account`, `Business Lending`, 
        `Properties Owned`, `Risk Weighting`, `BRId`, `GenderId`, `IAId`) AS row_num
FROM banking_clients;

WITH duplicate_cte AS
(
SELECT *,
	ROW_NUMBER() OVER(PARTITION BY `Client ID`, `Name`, `Age`, `Location ID`, 
		`Joined Bank`, `Engagement Days`, `Engagement TimeFrame`, `Banking Contact`, 
        `Nationality`, `Occupation`, `Fee Structure`, `Processing Fess`, `Loyalty Classification`, 
        `Estimated Income`, `Income Band`, `Superannuation Savings`, `Amount of Credit Cards`, `Credit Card Balance`, 
        `Bank Loans`, `Bank Deposits`, `Checking Accounts`, `Saving Accounts`, `Foreign Currency Account`, `Business Lending`, 
        `Properties Owned`, `Risk Weighting`, `BRId`, `GenderId`, `IAId`) AS row_num
FROM banking_clients
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM banking_clients;