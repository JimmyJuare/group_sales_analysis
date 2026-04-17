USE sales_db;

SELECT * FROM sales_data;
/*
================================================
CALCULATE HOW MUCH MICHAEL SPENT ON MOTORCYCLES
================================================
*/
SELECT SUM(priceeach) AS total_spent_on_motorcycles
FROM sales_data
WHERE contactfirstname = 'Michael'
	AND productline = 'motorcycles';
/*
===================================
 CALCULATE THE HIGHEST PAYING CITY
===================================
*/
-- were selecting the city and suming the sales as an alias called 'highest_city_sales'
SELECT city, SUM(sales) AS highest_city_sales
FROM  sales_data
GROUP BY city -- GROUP BY aggregates the city data per city
LIMIT 1; -- limit to 1 result

-- the most money spent on the smallest deal size
SELECT MAX(sales) as highest_sale, dealsize
FROM sales_data
WHERE dealsize = 'Small';