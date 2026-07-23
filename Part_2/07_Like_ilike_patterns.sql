-- like - case sensitive pattern match
-- ilike - case insensitive pattern nmatch
-- % - means any no of characters
-- exactly one char
-- the % after the wireless mean anything can come after it
-- SELECT
--     name,
--     price
-- FROM
--     Products
-- WHERE
--     name LIKE 'Wireless%';

-- ilike is case insensituve so it matches with desk, DESK, Desk etc
-- SELECT
--     name,
--     category,
--     price
-- FROM
--     Products
-- WHERE
--     name ILIKE '%desk%';

-- PSQL query to use ILIKE and find chair in decription OR name and return the searcgh
SELECT
    name,
    description,
    price,
    category FROM Products
WHERE
    name ILIKE '%chair%'
    OR description ILIKE '%chair%';