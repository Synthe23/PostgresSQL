-- select all the products whose category is stationary
-- SELECT name, category description, price FROM Products WHERE category = 'stationery';

-- Updated the prices of the Gel Pen and the Notebook
UPDATE Products SET price = 100 WHERE name = 'Notebook';
UPDATE Products SET price = 25 WHERE name = 'Gel Pen';

-- Update the prices of the stationary category by 10%
UPDATE Products SET price = ROUND(price + price * 0.10, 2) WHERE category = 'stationery';

-- Display the stationary products
SELECT name, category, price FROM Products WHERE category = 'stationery';

-- Set the is_active = false where the stock is 0
UPDATE Products SET is_active = FALSE WHERE stock = 0;

SELECT name, stock, is_active FROM Products;

