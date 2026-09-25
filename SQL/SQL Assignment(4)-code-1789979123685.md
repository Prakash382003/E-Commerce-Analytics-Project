# Product & Category Analysis SQL Queries

A comprehensive set of SQL queries designed for product catalog evaluation, category metrics, pricing ranges, and brand performance.

## 📊 Overview
This repository contains optimized SQL queries to analyze product portfolios, category-wise breakdowns, pricing distributions, and brand insights.

## 🚀 Queries Included

1. **Total number of products[cite: 3]:**
   `SELECT COUNT(DISTINCT Product_ID) AS Total_Products FROM Products;`[cite: 3]

2. **Category-wise product count[cite: 3]:**
   `SELECT C.Category_Name, COUNT(P.Product_ID) AS Product_Count FROM Products P INNER JOIN Categories C ON P.Category_ID = C.Category_ID GROUP BY C.Category_Name ORDER BY Product_Count DESC;`[cite: 3]

3. **Brand-wise product count[cite: 3]:**
   `SELECT Brand, COUNT(*) AS Product_Count FROM Products GROUP BY Brand ORDER BY Product_Count DESC;`[cite: 3]

4. **Average product price by category[cite: 3]:**
   `SELECT C.Category_Name, ROUND(AVG(P.Unit_Price), 2) AS Average_Price FROM Products P INNER JOIN Categories C ON P.Category_ID = C.Category_ID GROUP BY C.Category_Name ORDER BY Average_Price DESC;`[cite: 3]

5. **Highest-priced products — Top 10[cite: 3]:**
   `SELECT TOP 10 Product_ID, Product_Name, Brand, Unit_Price FROM Products ORDER BY Unit_Price DESC;`[cite: 3]

6. **Lowest-priced products — Top 10[cite: 3]:**
   `SELECT TOP 10 Product_ID, Product_Name, Brand, Unit_Price FROM Products ORDER BY Unit_Price ASC;`[cite: 3]

7. **Brand-wise average price[cite: 3]:**
   `SELECT Brand, ROUND(AVG(Unit_Price), 2) AS Average_Price FROM Products GROUP BY Brand ORDER BY Average_Price DESC;`[cite: 3]

8. **Products by price range[cite: 3]:**
   `SELECT CASE WHEN Unit_Price < 5000 THEN 'Below 5,000' WHEN Unit_Price BETWEEN 5000 AND 15000 THEN '5,000 - 15,000' WHEN Unit_Price BETWEEN 15001 AND 30000 THEN '15,001-30,000' ELSE 'Above 30,000' END AS Price_Range, COUNT(*) AS Product_Count FROM Products GROUP BY CASE WHEN Unit_Price < 5000 THEN 'Below 5,000' WHEN Unit_Price BETWEEN 5000 AND 15000 THEN '5,000 - 15,000' WHEN Unit_Price BETWEEN 15001 AND 30000 THEN '15,001-30,000' ELSE 'Above 30,000' END ORDER BY Product_Count DESC;`[cite: 3]

9. **Category-wise minimum and maximum price[cite: 3]:**
   `SELECT C.Category_Name, MIN(P.Unit_Price) AS Minimum_Price, MAX(P.Unit_Price) AS Maximum_Price FROM Products P INNER JOIN Categories C ON P.Category_ID = C.Category_ID GROUP BY C.Category_Name ORDER BY C.Category_Name;`[cite: 3]

10. **Brands with more than 100 products[cite: 3]:**
    `SELECT Brand, COUNT(*) AS Product_Count FROM Products GROUP BY Brand HAVING COUNT(*) > 100 ORDER BY Product_Count DESC;`[cite: 3]

11. **Top 10 brands by average product price[cite: 3]:**
    `SELECT TOP 10 Brand, ROUND(AVG(Unit_Price), 2) AS Average_Price FROM Products GROUP BY Brand ORDER BY Average_Price DESC;`[cite: 3]

12. **Category contribution to total product catalog[cite: 3]:**
    `SELECT C.Category_Name, COUNT(P.Product_ID) AS Product_Count, ROUND(COUNT(P.Product_ID) * 100.0 / (SELECT COUNT(*) FROM Products), 2) AS Percentage_of_Catalog FROM Products P INNER JOIN Categories C ON P.Category_ID = C.Category_ID GROUP BY C.Category_Name ORDER BY Percentage_of_Catalog DESC;`[cite: 3]