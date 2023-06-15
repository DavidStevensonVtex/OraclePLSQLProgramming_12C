DECLARE
   /*
   || Declare a cursor and then define a record based on that cursor
   || with the %ROWTYPE attribute.
   */
   CURSOR cust_sales_cur
   IS
        SELECT customer_id, customer_name, SUM (total_sales) tot_sales
          FROM cust_sales_roundup
         WHERE sold_on < ADD_MONTHS (SYSDATE, -3)
      GROUP BY customer_id, customer_name;

   cust_sales_rec   cust_sales_cur%ROWTYPE;
BEGIN
   /* Move values directly into record by fetching from cursor */

   OPEN cust_sales_cur;

   FETCH cust_sales_cur
   INTO cust_sales_rec;
END;
/