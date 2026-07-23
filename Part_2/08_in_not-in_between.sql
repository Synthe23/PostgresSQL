-- IN -> value must match atleast 1 item from the list
-- NOT IN -> value must not match any item in the list
-- BETWEEN -> value must be in the range

-- to select name, ... in products where category in electronics, furnitures.
SELECT name, category, price 
FROM Products 
WHERE category IN ('electronics', 'furniture');

-- To select name, ... from products in which category not in furniture, elec.
SELECT name, category, price FROM Products WHERE category NOT IN ('furniture', 'electronics');

-- to select name, ... from products where the price in the range 1000-8000
SELECT name, price, category FROM Products WHERE price BETWEEN 1000 AND 8000;
-- The above query also keeps the 1000 and 8000

-- to select name, ... from products where category not-in electronics or price between 1k-4k 
SELECT name, price, category FROM Products WHERE category NOT IN ('electronics') OR PRICE BETWEEN 1000 AND 4000;