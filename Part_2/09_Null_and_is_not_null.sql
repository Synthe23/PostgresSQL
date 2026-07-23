-- null -> missing / unknown value
-- u should not check using = null
-- IS NULL
-- IS NOT NULL

SELECT name, description, stock FROM Products WHERE description IS NULL;
SELECT name, description, stock FROM Products WHERE description IS NOT NULL;
SELECT name, category, description, is_active FROM Products WHERE is_active = TRUE AND description IS NULL;