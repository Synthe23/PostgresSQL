-- returning usually return back the rows immediately after insert update and delete

-- INSERT INTO products(name, category, price, stock, is_active, sku, description) 
-- VALUES ('T-Shirt', 'Wearables', '1799', 58, TRUE, 'SHI-RTX-001', 'Plain Pollo Tshirt') RETURNING name, category, price;

-- Sort by price ascending
SELECT name, price, category FROM Products ORDER BY price ASC;

-- 
SELECT name, price, category, stock FROM Products;