DROP TABLE company
/

CREATE TABLE company
(
   company_id     INTEGER
 , order_amount   NUMBER
 , name           VARCHAR2 (100)
)
/

DROP TABLE orders
/

CREATE TABLE orders (company_id INTEGER)
/
