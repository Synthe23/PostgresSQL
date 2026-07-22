-- AND -> every condition must be true.
-- OR -> atleast one condition must be true.
-- NOT -> reverse/exclude a condition

-- 1> Products where the price > 2000 and also category shall be electronics.
SELECT name, price, category FROM Products WHERE category = 'electronics' and price > 2000;

-- 2> Count the number of products under category of electronics
SELECT COUNT(*) FROM Products WHERE category = 'electronics';