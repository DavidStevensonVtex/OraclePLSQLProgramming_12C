DECLARE
   CURSOR comp_cur
   IS
        SELECT c.name, SUM (inv_amt) total_sales
          FROM company c, invoice i
         WHERE c.company_id = i.company_id
               AND i.invoice_date BETWEEN TO_DATE('01-JAN-2001', 'DD-MON-YYYY') AND TO_DATE('31-DEC-2001', 'DD-MON-YYYY') 
      GROUP BY c.name;

   comp_rec   comp_cur%ROWTYPE;
BEGIN
   OPEN comp_cur;

   FETCH comp_cur
   INTO comp_rec;

   IF comp_rec.total_sales > 5000
   THEN
      DBMS_OUTPUT.put_line(' You have exceeded your credit limit of $5000 by '
                           || TO_CHAR (comp_rec.total_sales - 5000, '$999G999'));
   END IF;

   IF comp_cur%ISOPEN
   THEN
      CLOSE comp_cur;
   END IF ;
END;
/