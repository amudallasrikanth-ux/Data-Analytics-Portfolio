use sales
Q1- Show all records.

SELECT*FROM store;

Q2-Display Order ID, Customer Name, Sales.
 
 SELECT ORDER_ID,Customer_Name FROM store;

Q3-Find sales greater than 1000.
 
 SELECT *
FROM store
WHERE Sales > 1000;

Q4-Show all orders from the South region

SELECT *
FROM store
WHERE Region = 'South';


Q5- Sort sales in descending order

SELECT *
FROM store
ORDER BY Sales DESC;

Q6- Total sales by Region

SELECT Region, SUM(Sales) AS Total_Sales
FROM store
GROUP BY Region;

Q7-Total profit by Category

SELECT Category, SUM(Profit) AS Total_Profit
FROM store
GROUP BY Category;

Q8- Top 10 customers by sales

SELECT TOP 10 Customer_Name, SUM(Sales) AS Total_Sales
FROM store
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;

Q9- Highest profit by Sub-Category

SELECT Sub_Category, MAX(Profit) AS Highest_Profit
FROM store
GROUP BY Sub_Category;

Q10- Top 5 products by profit

SELECT TOP 5 Product_Name, SUM(Profit) AS Total_Profit
FROM store
GROUP BY Product_Name
ORDER BY Total_Profit DESC;

Q11- Monthly sales trend

SELECT MONTH(Order_Date) AS Month_No,
SUM(Sales) AS Total_Sales
FROM store
GROUP BY MONTH(Order_Date)
ORDER BY Month_No;

Q12- Running total of sales

SELECT Order_Date,Sales,
SUM(Sales) OVER (ORDER BY Order_Date) AS Running_Total
FROM store;

Q13- Top-selling product in each category

SELECT Category,Product_Name,
SUM(Sales) AS Total_Sales
FROM store
GROUP BY Category, Product_Name
ORDER BY Category, Total_Sales DESC;