DROP TABLE customer
/

CREATE TABLE customer (customer_id INTEGER, name VARCHAR2 (100))
/

CREATE OR REPLACE PACKAGE customer_sales_pkg
IS
   TYPE customer_sales_rectype IS RECORD (
      customer_id     customer.customer_id%TYPE
    , customer_name   customer.name%TYPE
    , total_sales     NUMBER (15, 2)
   );
END;
/

DECLARE
   prev_customer_sales_rec   customer_sales_pkg.customer_sales_rectype;
   top_customer_rec          customer_sales_pkg.customer_sales_rectype;
BEGIN
   NULL;
END;
/