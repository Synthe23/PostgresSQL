DROP TABLE IF EXISTS basics.sales;

CREATE TABLE
    basics.sales (
        id SERIAL PRIMARY KEY,
        title TEXT NOT NULL,
        sales_price NUMERIC(10, 2) NOT NULL DEFAULT 0,
        created_at TIMESTAMP DEFAULT NOW ()
    );

INSERT INTO basics.sales(title, sales_price)
VALUES 
('Handwash Dispenser', 99.99),
('Wardrobe', 7999.5),
('Chimney', 6250),
('Bicycle', 19750.50);

SELECT * FROM basics.sales;
SELECT title, sales_price FROM basics.sales ORDER BY sales_price ASC;
SELECT title, sales_price FROM basics.sales ORDER BY sales_price DESC;