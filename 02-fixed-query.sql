/*
	Export
	Chart
*/

SELECT TOP 10 C.CustomerName, SUM(IL.ExtendedPrice) 'Total'
FROM Sales.Invoices AS I
	INNER JOIN Sales.InvoiceLines AS IL ON IL.InvoiceID = I.InvoiceID
	INNER JOIN Sales.Customers AS C ON C.CustomerID = I.CustomerID
GROUP BY C.CustomerName
ORDER BY 2 DESC;