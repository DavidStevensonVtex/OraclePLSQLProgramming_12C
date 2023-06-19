DROP TABLE sales_descriptors
/

CREATE TABLE sales_descriptors
(
   food_sales_stg      VARCHAR2 (100)
 , service_sales_stg   VARCHAR2 (100)
 , toy_sales_stg       VARCHAR2 (100)
)
/

CREATE OR REPLACE PACKAGE sales_pkg
IS
   food_sales      NUMBER;
   service_sales   NUMBER;
   toy_sales       NUMBER;
END;
/

CREATE OR REPLACE PROCEDURE calc_percentages (total_sales_in IN NUMBER)
IS
   l_profile   sales_descriptors%ROWTYPE;

   /* Define a function right inside the procedure! */
   FUNCTION pct_stg (val_in IN NUMBER)
      RETURN VARCHAR2
   IS
   BEGIN
      RETURN TO_CHAR ( (val_in / total_sales_in) * 100, '$999,999');
   END;
BEGIN
   l_profile.food_sales_stg := pct_stg (sales_pkg.food_sales);
   l_profile.service_sales_stg := pct_stg (sales_pkg.service_sales);
   l_profile.toy_sales_stg := pct_stg (sales_pkg.toy_sales);
END;
/

EXECUTE calc_percentages ( 123456.78 ) ;
/