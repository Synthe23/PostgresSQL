INSERT INTO products (name, category, price, stock, sku, description)
VALUES (
    'Refrigerator',
    'electronics',
    17550,
    23,
    'ELEC-FRI-001',
    'To keep things cool'
)
ON CONFLICT (sku) DO NOTHING;

SELECT * FROM products;
SELECT name, sku
FROM products;


SELCT name, category, price, stock, sku FROM products WHERE sku IN ('ELEC-LAP-100', 'ELEC-LAP-101', 'ELEC-LAP-102');