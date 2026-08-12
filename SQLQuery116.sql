SELECT Gender, AVG(Age) AS AverageAge
FROM dbo.Customers
GROUP BY Gender
ORDER BY AverageAge DESC;