CREATE OR REPLACE PROCEDURE analyze_new_technology (
   tech_name           IN     VARCHAR2
 , analysis_year       IN     INTEGER
 , number_of_adherents IN OUT NUMBER
 , projected_revenue      OUT NUMBER
)
IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('tech_name: ' || tech_name || 
        ' analysis_year: ' || TO_CHAR(analysis_year)  );
    number_of_adherents := 1234 ;
    projected_revenue := 12345.67 ;
END;
/

DECLARE
   devoted_followers   NUMBER;
   est_revenue         NUMBER;
BEGIN
   EXECUTE IMMEDIATE 'BEGIN analyze_new_technology (:p1, :p2, :p3, :p4); END;'
      USING 'Java', 2002, IN OUT devoted_followers, OUT est_revenue;

      DBMS_OUTPUT.PUT_LINE('devoted_followers: ' || TO_CHAR(devoted_followers) || 
        ' estimated revenue: ' || TO_CHAR(est_revenue) ) ;
END;
/