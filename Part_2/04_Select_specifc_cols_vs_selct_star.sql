-- select star returns all the columns which can be messy in large scale projects but select specific columns only provides the required data.

-- SELECT * FROM products;

-- SELECT name, category, price, stock, description FROM products;

-- AS creates an alias for the outpurt of that column name
-- makes the col name easier to read

SELECT
     name AS product_name,
     price AS product_price,
     stock AS product_quantity
FROM products;