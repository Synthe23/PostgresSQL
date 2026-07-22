INSERT INTO products(
    name, category, price, stock, sku, description
) VALUES
('Laptop stand 1', 'daily use', 5000.5, 23, 'ELEC-KEY-012', 'laptop stand basic');

SELECT
    id,
    name,
    category,
    price,
    stock,
    is_active,
    sku,
    description,
    TO_CHAR(created_at, 'YYYY-MM-DD HH24:MI:SS') AS created_at
FROM products;