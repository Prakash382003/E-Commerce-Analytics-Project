-- =================================================================
-- Seller Performance Analysis SQL Queries
-- =================================================================

-- (1) Total number of sellers[cite: 4]
SELECT COUNT(DISTINCT Seller_ID) AS Total_Sellers FROM Sellers;[cite: 4]

-- (2) Average seller rating[cite: 4]
SELECT ROUND(AVG(Seller_Rating), 2) AS Average_Seller_Rating FROM Sellers;[cite: 4]

-- (3) Highest-rated sellers — Top 10[cite: 4]
SELECT TOP 10 Seller_ID, Seller_Name, Seller_Rating FROM Sellers ORDER BY Seller_Rating DESC;[cite: 4]

-- (4) Lowest-rated sellers — Bottom 10[cite: 4]
SELECT TOP 10 Seller_ID, Seller_Name, Seller_Rating FROM Sellers ORDER BY Seller_Rating ASC;[cite: 4]

-- (5) Seller-wise order count[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, COUNT(O.Order_ID) AS Order_Count FROM Sellers S LEFT JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Order_Count DESC;[cite: 4]

-- (6) Top 10 sellers by order volume[cite: 4]
SELECT TOP 10 S.Seller_ID, S.Seller_Name, COUNT(O.Order_ID) AS Order_Count FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Order_Count DESC;[cite: 4]

-- (7) Seller-wise total sales[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, ROUND(SUM(O.Order_Amount), 2) AS Total_Sales FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Total_Sales DESC;[cite: 4]

-- (8) Top 10 sellers by total sales[cite: 4]
SELECT TOP 10 S.Seller_ID, S.Seller_Name, ROUND(SUM(O.Order_Amount), 2) AS Total_Sales FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Total_Sales DESC;[cite: 4]

-- (9) Seller-wise average order value[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, ROUND(AVG(O.Order_Amount), 2) AS Average_Order_Value FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Average_Order_Value DESC;[cite: 4]

-- (10) Seller-wise delivery status distribution[cite: 4]
SELECT S.Seller_Name, O.Delivery_Status, COUNT(*) AS Order_Count FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_Name, O.Delivery_Status ORDER BY S.Seller_Name, Order_Count DESC;[cite: 4]

-- (11) Seller-wise cancellation count[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, COUNT(CASE WHEN O.Delivery_Status = 'Cancelled' THEN 1 END) AS Cancelled_Orders FROM Sellers S LEFT JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Cancelled_Orders DESC;[cite: 4]

-- (12) Seller-wise cancellation rate[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, ROUND(SUM(CASE WHEN O.Delivery_Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(O.Order_ID), 2) AS Cancellation_Rate FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name ORDER BY Cancellation_Rate DESC;[cite: 4]

-- (13) Seller rating vs total sales[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, S.Seller_Rating, ROUND(SUM(O.Order_Amount), 2) AS Total_Sales FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name, S.Seller_Rating ORDER BY Total_Sales DESC;[cite: 4]

-- (14) Top sellers with rating above 4.5[cite: 4]
SELECT TOP 10 S.Seller_ID, S.Seller_Name, S.Seller_Rating, COUNT(O.Order_ID) AS Order_Count, ROUND(SUM(O.Order_Amount), 2) AS Total_Sales FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID WHERE S.Seller_Rating > 4.5 GROUP BY S.Seller_ID, S.Seller_Name, S.Seller_Rating ORDER BY Total_Sales DESC;[cite: 4]

-- (15) Sellers with more than 200 orders[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, COUNT(O.Order_ID) AS Order_Count FROM Sellers S INNER JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name HAVING COUNT(O.Order_ID) > 200 ORDER BY Order_Count DESC;[cite: 4]

-- (16) Seller performance summary[cite: 4]
SELECT S.Seller_ID, S.Seller_Name, S.Seller_Rating, COUNT(O.Order_ID) AS Order_Count, ROUND(SUM(O.Order_Amount), 2) AS Total_Sales, ROUND(AVG(O.Order_Amount), 2) AS Average_Order_Value FROM Sellers S LEFT JOIN Orders O ON S.Seller_ID = O.Seller_ID GROUP BY S.Seller_ID, S.Seller_Name, S.Seller_Rating ORDER BY Total_Sales DESC;[cite: 4]