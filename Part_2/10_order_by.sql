-- ASCENDING order of sorting the price
SELECT name, price, category
 FROM Products
  ORDER BY PRICE ASC;

-- DESCENDING order of sorting the price
SELECT name, price, category FROM Products ORDER BY price DESC;

-- price in descending and category in ascending
SELECT name, price, category FROM Products ORDER BY category ASC, price DESC;