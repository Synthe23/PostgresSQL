-- like - case sensitive pattern match
-- ilike - case insensitive pattern nmatch
-- % - means any no of characters
-- exactly one char

-- the % after the wireless mean anything can come after it
SELECT name, price FROM Products WHERE name LIKE 'Wireless%';