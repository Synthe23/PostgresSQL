-- /product?catagory=electronics

SELECT name, category, price FROM products WHERE category = 'electronics';

SELECT name, category, price FROM products WHERE price > 2000; 

SELECT name, category, price, is_active FROM products WHERE is_active = FALSE;