-- SELECT name, price, stock, sku FROM Products WHERE SKU = 'ELEC-KEY-001';

-- Update rows in 'TableName' where condition is met
UPDATE Products
SET price = 1299.00,
stock = 23
WHERE SKU = 'ELEC-KEY-001';

SELECT name, price, stock, sku FROM Products WHERE SKU = 'ELEC-KEY-001';
