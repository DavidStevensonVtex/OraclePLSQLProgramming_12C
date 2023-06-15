DECLARE
   TYPE customer_sales_rectype IS RECORD (
      customer_id     customer.customer_id%TYPE
    , customer_name   customer.name%TYPE
    , total_sales     NUMBER (15, 2)
   );

   top_customer_rec   customer_sales_rectype;
BEGIN
     /* Move values directly into the record: */
     SELECT customer_id, customer_name, SUM (total_sales)
       INTO top_customer_rec
       FROM cust_sales_roundup
      WHERE sold_on < ADD_MONTHS (SYSDATE, -3)
   GROUP BY customer_id, customer_name;
EXCEPTION
    WHEN NO_DATA_FOUND THEN NULL ;
END;
/