1. INSERT INTO products (name, price, can_be_returned) VALUES('chair', 44.00, false);


2. INSERT INTO products (name, price, can_be_returned) VALUES('stool', 25.99, true);


3.INSERT INTO products (name, price, can_be_returned) VALUES('table', 124.00, false);


4. SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)


5.SELECT name FROm products;
 name
-------
 chair
 stool
 table
(3 rows)


6.  SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124
(3 rows)


7. INSERT INTO products (name, price, can_be_returned) VALUES ('computer', 695.00, false);


8. SELECT * FROM products WHERE can_be_returned='t';
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  2 | stool | 25.99 | t
(1 row)


9.SELECT * FROM products WHERE price<44.00;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  2 | stool | 25.99 | t
(1 row)


10.SELECT * FROM products WHERE price>=22.50 And PRICE <=99.99;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
(2 rows)


11. UPDATE products SET price = price-20.00;
UPDATE 4
products_db=# SELECT * FROM products;
 id |   name   |       price       | can_be_returned
----+----------+-------------------+-----------------
  1 | chair    |                24 | f
  2 | stool    | 5.989999999999998 | t
  3 | table    |               104 | f
  4 | computer |               675 | f
(4 rows)


12.DELETE FROM products WHERE price<25.00;
DELETE 2
products_db=# SELECT * FROM products;
 id |   name   | price | can_be_returned
----+----------+-------+-----------------
  3 | table    |   104 | f
  4 | computer |   675 | f
(2 rows)


13.UPDATE products SET price = price+20;
UPDATE 2
products_db=# SELECT * FROM products;
 id |   name   | price | can_be_returned
----+----------+-------+-----------------
  3 | table    |   124 | f
  4 | computer |   695 | f
(2 rows)


14. UPDATE products SET can_be_returned='t';
UPDATE 2
products_db=# SELECT * FROM products;
 id |   name   | price | can_be_returned
----+----------+-------+-----------------
  3 | table    |   124 | t
  4 | computer |   695 | t
(2 rows)