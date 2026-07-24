-- INSERT INTO products(name, category, price, stock, is_active, sku, description) 
-- VALUES ('Santitizer', 'Sanitary', 175, 6, TRUE, 'SAN-ITE-001', 'Used to clean hands');

-- Delete rows from 'Products' where sku is sanitiser's
DELETE FROM Products
WHERE sku = 'SAN-ITE-001';

SELECT name, category, description, price FROM Products;