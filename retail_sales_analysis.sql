SELECT COUNT(*)
FROM superstore;

SELECT SUM(Sales)
FROM superstore;

SELECT SUM(Profit)
FROM superstore;

SHOW COLUMNS FROM superstore;

SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT `Order Date`
FROM superstore
LIMIT 5;

SELECT
MONTH(STR_TO_DATE(`Order Date`,'%m/%d/%Y')) AS Month_No,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;

SELECT
MONTH(STR_TO_DATE(`Order Date`,'%m/%d/%Y')) AS Month_No,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Month_No
ORDER BY Month_No;

SELECT `Product Name`,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT `Product Name`,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit;

SELECT Category,
AVG(Discount) AS Avg_Discount
FROM superstore
GROUP BY Category;