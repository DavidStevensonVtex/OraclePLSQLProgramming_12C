DROP TABLE sales_data
/

CREATE TABLE sales_data (year INTEGER, sales_amount NUMBER)
/

CREATE OR REPLACE PROCEDURE display_total_sales (year_in IN PLS_INTEGER)
IS
BEGIN
   DBMS_OUTPUT.put_line ('Total for year ' || year_in);
END display_total_sales;
/