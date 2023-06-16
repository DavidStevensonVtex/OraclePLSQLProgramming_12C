CREATE OR REPLACE PROCEDURE calc_totals
IS
   year_total   NUMBER;
BEGIN
   year_total := 123.45;

   /* Beginning of nested block */
   DECLARE
      month_total   NUMBER;
   BEGIN
      month_total := year_total / 12;
      DBMS_OUTPUT.PUT_LINE('month_total: ' || TO_CHAR(month_total));
   END set_month_total;
/* End of nested block */

END;
/