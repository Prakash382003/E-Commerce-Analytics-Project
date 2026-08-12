SELECT 'Customers' AS TableName, COUNT(*) AS Total FROM dbo.Customers
UNION ALL
SELECT 'Products', COUNT(*) FROM dbo.Products
UNION ALL
SELECT 'Categories', COUNT(*) FROM dbo.Categories
UNION ALL
SELECT 'Orders', COUNT(*) FROM dbo.Orders
UNION ALL
SELECT 'Payments', COUNT(*) FROM dbo.Payments
UNION ALL
SELECT 'Shipping', COUNT(*) FROM dbo.Shipping
UNION ALL
SELECT 'Reviews', COUNT(*) FROM dbo.Reviews
UNION ALL
SELECT 'Returns', COUNT(*) FROM dbo.Returns;