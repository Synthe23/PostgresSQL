DROP TABLE IF EXISTS basics.product_basics;

CREATE TABLE basics.product_basics(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    stock INTEGER DEFAULT 0,
    total_views BIGINT DEFAULT 0,
    price NUMERIC(8, 2),
    isActive BOOLEAN DEFAULT TRUE
);

-- queries
INSERT INTO basics.product_basics
(name, description, stock, total_views, price, isActive)
VALUES
('Product_1', 'Soap', 30, 476, 55, TRUE),
('Product_2', 'Biscuit', 51, 500, 40, TRUE),
('Product_3', 'Tea', 32, 489, 30, TRUE),
('Product_4', 'Coffee', 31, 460, 19, TRUE),
('Product_5', 'Milk', 39, 980, 29, False);

SELECT * FROM basics.product_basics;

-- Below query line will skip where the isActive is false unlike the above line
SELECT id, name, price, isActive FROM basics.product_basics WHERE isActive;