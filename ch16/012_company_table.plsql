DROP TABLE company
/

CREATE TABLE company
(
   name               VARCHAR2 (100)
 , address1           VARCHAR2 (100)
 , address2           VARCHAR2 (100)
 , city               VARCHAR2 (100)
 , state              VARCHAR2 (100)
 , zipcode            VARCHAR2 (100)
 , ceo_compensation   NUMBER
 , cost_cutting       VARCHAR2 (100)
)
/

CREATE OR REPLACE FUNCTION company_table_name (id_in IN INTEGER)
   RETURN VARCHAR2
IS
BEGIN
   RETURN 'company';
END;
/