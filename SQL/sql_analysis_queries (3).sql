-- =====================================================================
-- Sales & Order Analysis SQL Queries (Single-Line Query Format)
-- =====================================================================

-- (1) Total number of orders
SELECT COUNT(DISTINCT OrderID) AS Total_Orders FROM Orders;

-- (2) Order status distribution
SELECT OrderStatus, COUNT(*) AS Order_Count FROM Orders GROUP BY OrderStatus ORDER BY Order_Count DESC;

-- (3) Sales channel-wise order count
SELECT SalesChannel, COUNT(*) AS Order_Count FROM Orders GROUP BY SalesChannel ORDER BY Order_Count DESC;

-- (4) Monthly order trend
SELECT YEAR(OrderDate) AS Order_Year, MONTH(OrderDate) AS Order_Month, COUNT(*) AS Order_Count FROM Orders GROUP BY YEAR(OrderDate), MONTH(OrderDate) ORDER BY Order_Year, Order_Month;

-- (5) Total quantity sold
SELECT SUM(Quantity) AS Total_Quantity_Sold FROM Order_Items;

-- (6) Total gross sales
SELECT ROUND(SUM(Gross_Amount), 2) AS Total_Gross_Sales FROM Order_Items;

-- (7) Total discount given
SELECT ROUND(SUM(Discount_Amount), 2) AS Total_Discount FROM Order_Items;

-- (8) Total net sales / revenue
SELECT ROUND(SUM(Net_Amount), 2) AS Total_Net_Sales FROM Order_Items;

-- (9) Average order value
SELECT ROUND(SUM(Net_Amount) / COUNT(DISTINCT Order_ID), 2) AS Average_Order_Value FROM Order_Items;

-- (10) Top 10 orders by net sales
SELECT TOP 10 Order_ID, ROUND(SUM(Net_Amount), 2) AS Net_Sales FROM Order_Items GROUP BY Order_ID ORDER BY Net_Sales DESC;

-- (11) Orders with multiple items
SELECT Order_ID, COUNT(*) AS Item_Count FROM Order_Items GROUP BY Order_ID HAVING COUNT(*) > 1 ORDER BY Item_Count DESC;

-- (12) Discount percentage distribution
SELECT Discount_Pct, COUNT(*) AS Item_Count, ROUND(SUM(Discount_Amount), 2) AS Total_Discount FROM Order_Items GROUP BY Discount_Pct ORDER BY Discount_Pct;

-- (13) Sales channel-wise order status
SELECT SalesChannel, OrderStatus, COUNT(*) AS Order_Count FROM Orders GROUP BY SalesChannel, OrderStatus ORDER BY SalesChannel, Order_Count DESC;

-- (14) Year-wise net sales
SELECT YEAR(O.OrderDate) AS Order_Year, ROUND(SUM(OI.Net_Amount), 2) AS Net_Sales FROM Orders O INNER JOIN Order_Items OI ON O.OrderID = OI.Order_ID GROUP BY YEAR(O.OrderDate) ORDER BY Order_Year;

-- (15) Top 10 sales days
SELECT TOP 10 O.OrderDate, ROUND(SUM(OI.Net_Amount), 2) AS Net_Sales FROM Orders O INNER JOIN Order_Items OI ON O.OrderID = OI.Order_ID GROUP BY O.OrderDate ORDER BY Net_Sales DESC;