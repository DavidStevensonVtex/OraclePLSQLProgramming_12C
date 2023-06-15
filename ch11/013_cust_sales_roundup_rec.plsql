DECLARE
   cust_sales_roundup_rec   cust_sales_roundup%ROWTYPE;

   CURSOR cust_sales_cur
   IS
      SELECT *
        FROM cust_sales_roundup;

   cust_sales_rec           cust_sales_cur%ROWTYPE;

   TYPE customer_sales_rectype IS RECORD (
      customer_id     NUMBER (5)
    , customer_name   customer.name%TYPE
    , total_sales     NUMBER (15, 2)
   );

   preferred_cust_rec       customer_sales_rectype;
BEGIN
   -- Assign one record to another.
   cust_sales_roundup_rec := cust_sales_rec;
   preferred_cust_rec := cust_sales_rec;
END;
/