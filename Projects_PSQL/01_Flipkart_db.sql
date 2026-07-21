--TODO SMALL PROJECT
-- Create a Database named Flipkart_db and then create a table with.
-- Product ID - Serial
-- name - String
-- sku_code 8 digit - String
-- Price max (99999999) - number
-- Stock_Quantity must be greater than 0- Number
-- Is available default true - Boolean
-- Category not null - String
-- Added_on - Date
-- Last_update - Date
-- CREATE DATABASE Flipkart_db;
CREATE SCHEMA IF NOT EXISTS flipkart;

DROP TABLE IF EXISTS flipkart.management;

CREATE TABLE
    flipkart.management (
        product_id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        sku_code VARCHAR(8) UNIQUE NOT NULL,
        price NUMERIC NOT NULL CHECK (PRICE <= 99999999),
        Stock_Quantity INTEGER CHECK (Stock_Quantity > 0),
        is_available BOOLEAN DEFAULT TRUE,
        category TEXT NOT NULL,
        Added_on TIMESTAMP DEFAULT NOW (),
        Last_update TIMESTAMP DEFAULT NOW ()
    );

INSERT INTO
    flipkart.management (
        name,
        sku_code,
        price,
        Stock_Quantity,
        is_available,
        category
    )
VALUES
    (
        'Smartphone',
        'FK100001',
        15999.00,
        80,
        TRUE,
        'Electronics'
    ),
    (
        'Running Shoes',
        'FK100002',
        3499.00,
        120,
        TRUE,
        'Footwear'
    ),
    (
        'Coffee Mug',
        'FK100003',
        499.00,
        15,
        TRUE,
        'Kitchen'
    ),
    (
        'Gaming Mouse',
        'FK100004',
        1499.00,
        65,
        TRUE,
        'Electronics'
    ),
    (
        'Leather Wallet',
        'FK100005',
        999.00,
        40,
        TRUE,
        'Accessories'
    ),
    (
        'Water Bottle',
        'FK100006',
        599.00,
        200,
        TRUE,
        'Home & Kitchen'
    ),
    (
        'Bluetooth Speaker',
        'FK100007',
        2499.00,
        25,
        TRUE,
        'Electronics'
    );

-- SELECT * FROM flipkart.management;
SELECT
    name,
    sku_code,
    price,
    Stock_Quantity,
    is_available,
    TO_CHAR (Added_on, 'YYYY-MM-DD HH24:MI:SS') AS Added_on,
    TO_CHAR (Last_update, 'YYYY-MM-DD HH24:MI:SS') AS Last_update
FROM
    flipkart.management;