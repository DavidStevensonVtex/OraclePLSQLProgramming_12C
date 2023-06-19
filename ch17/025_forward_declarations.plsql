CREATE OR REPLACE PROCEDURE perform_calcs (year_in IN INTEGER)
IS
   FUNCTION total_sales (year_in IN INTEGER)
      RETURN NUMBER
   IS
   BEGIN
      RETURN 0;
   END;

   /* Header only for total_cost function. */
   FUNCTION total_cost (year_in IN INTEGER)
      RETURN NUMBER;

   /* The net_profit function uses total_cost. */
   FUNCTION net_profit (year_in IN INTEGER)
      RETURN NUMBER
   IS
   BEGIN
      RETURN total_sales (year_in) - total_cost (year_in);
   END;

   /* The total_cost function uses net_profit. */
   FUNCTION total_cost (year_in IN INTEGER)
      RETURN NUMBER
   IS
   BEGIN
      IF TRUE
      THEN
         RETURN net_profit (year_in) * .10;
      ELSE
         RETURN year_in;
      END IF;
   END;
BEGIN
   NULL;
END;
/