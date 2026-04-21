--MINI PROJECT: SALES ANALYST CHALLENGE

/*Task 1: Explore the Data*/
--Previews the first 10 rows of all tables to understand the data structure.
SELECT * FROM dim_date
LIMIT 10;
SELECT * FROM dim_customer
LIMIT 10;
SELECT * FROM dim_product
LIMIT 10;
SELECT * FROM dim_store
LIMIT 10;
SELECT * FROM fact_sales
LIMIT 10;

/*Task 2: Customer Filtering*/
--Filters for female customers in Japan or those who joined after 2023, concatenating names into a single column.
SELECT
   first_name || ' ' || last_name AS full_name, 
   email,
   country
FROM dim_customer
WHERE gender='F' 
AND (country= 'Japan' OR join_date > '2023-01-01');

/*Task 3: Pattern Search*/
--Identifies customers with a first name starting with 'T' that is exactly 4 characters long.
SELECT*  
FROM dim_customer
WHERE first_name LIKE 'T___';

/*Task 4: Top Products by Price*/
--Returns the 5 most expensive products, ensuring any items without prices appear last
SELECT
   product_name,
   category,
   brand,
   unit_price
FROM dim_product
ORDER BY unit_price DESC NULLS LAST
LIMIT 5;

/*Task 5: Category Summary*/
--Calculates average and total price per category, filtering for those with an average above 500.
SELECT
   category,
   AVG(unit_price) AS avg_price,
   SUM(unit_price) AS total_unit_price
FROM dim_product
GROUP BY category
HAVING AVG(unit_price) > 500;

/*Task 6: Store Overview*/
--Lists all stores located in the East region in alphabetical order.
SELECT*
FROM dim_store
WHERE region = 'East'
ORDER BY store_name ASC;

/*Bonus Challenge*/
--Groups by brand to find the top 3 average prices for high-value items, rounded to 2 decimals
SELECT
   brand,
   ROUND(AVG(unit_price), 2) AS avg_product
FROM dim_product
WHERE unit_price > 200
GROUP BY brand
ORDER BY avg_product DESC
LIMIT 3;
