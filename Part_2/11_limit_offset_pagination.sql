-- limit -> how many rows you want to return
-- offset -> how many rows we want to skip

-- sort the products by ascending and display the top 5 products
SELECT name, price, category FROM Products ORDER BY price ASC LIMIT 5;

-- page - 1 display the 5 products
SELECT name, price FROM Products ORDER BY name ASC LIMIT 5 OFFSET 0;


-- page - 2 display the next 5 products
SELECT name, price FROM Products ORDER BY name ASC LIMIT 5 OFFSET 5;