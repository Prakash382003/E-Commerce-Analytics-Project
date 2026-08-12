SELECT State, AVG(Age) AS AverageAge
FROM dbo.Customers
GROUP BY State
ORDER BY AverageAge DESC;