-- AND -> every condition must be true.
-- OR -> atleast one condition must be true.
-- NOT -> reverse/exclude a condition
-- 1> Products where the price > 2000 and also category shall be electronics.
SELECT
    name,
    price,
    category
FROM
    Products
WHERE
    category = 'electronics'
    and price > 2000;

-- 2> Count the number of products under category of electronics.
SELECT
    COUNT(*)
FROM
    Products
WHERE
    category = 'electronics';

-- 3> Products where the category is electronics or furniture.
SELECT
    name,
    category,
    price
FROM
    Products
WHERE
    category = 'electronics'
    OR category = 'furniture';

-- 4> Products not in the stationary, furniture category
SELECT
    name,
    price,
    category
FROM
    Products
WHERE
    category NOT IN ('stationery', 'furniture');

-- NECESSORY SYNTAX FOR THE NULL:
-- One value
-- WHERE category = 'electronics';
-- Multiple values
-- WHERE category IN ('electronics', 'furniture');
-- Exclude one value
-- WHERE category <> 'stationery';
-- Exclude multiple values
-- WHERE category NOT IN ('stationery', 'furniture');
-- 5> Products where categegory is electronics and furniture and stock greater than 50 and price more than 3000
SELECT
    name,
    stock,
    category,
    price
FROM
    Products
WHERE
    category IN ('electronics', 'furniture')
    AND stock > 5
    AND price > 1100;