-- =================================================================
-- Customer Analysis SQL Queries
-- =================================================================

-- (1) Gender-wise customer count[cite: 2]
SELECT Gender, COUNT(*) AS Customer_Count FROM Customers GROUP BY Gender ORDER BY Customer_Count DESC;[cite: 2]

-- (2) Average customer age by gender[cite: 2]
SELECT Gender, ROUND(AVG(Age), 2) AS Average_Age FROM Customers GROUP BY Gender;[cite: 2]

-- (3) State-wise customer count[cite: 2]
SELECT State, COUNT(*) AS Customer_Count FROM Customers GROUP BY State ORDER BY Customer_Count DESC;[cite: 2]

-- (4) Top 10 cities by customer count[cite: 2]
SELECT TOP 10 City, COUNT(*) AS Customer_Count FROM Customers GROUP BY City ORDER BY Customer_Count DESC;[cite: 2]

-- (5) Customer segment distribution[cite: 2]
SELECT Customer_Type, COUNT(*) AS Customer_Count FROM Customers GROUP BY Customer_Type ORDER BY Customer_Count DESC;[cite: 2]

-- (6) Average age by customer segment[cite: 2]
SELECT Customer_Type, ROUND(AVG(Age), 2) AS Average_Age FROM Customers GROUP BY Customer_Type ORDER BY Average_Age DESC;[cite: 2]

-- (7) Youngest and oldest customers[cite: 2]
SELECT MIN(Age) AS Minimum_Age, MAX(Age) AS Maximum_Age FROM Customers;[cite: 2]

-- (8) Customers joined by year[cite: 2]
SELECT YEAR(Join_Date) AS Join_Year, COUNT(*) AS Customers_Joined FROM Customers GROUP BY YEAR(Join_Date) ORDER BY Join_Year;[cite: 2]

-- (9) State-wise gender distribution[cite: 2]
SELECT State, Gender, COUNT(*) AS Customer_Count FROM Customers GROUP BY State, Gender ORDER BY State, Customer_Count DESC;[cite: 2]

-- (10) Customers aged 18-25[cite: 2]
SELECT COUNT(*) AS Customers_Age_18_to_25 FROM Customers WHERE Age BETWEEN 18 AND 25;[cite: 2]