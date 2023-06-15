DROP TABLE company
/

CREATE TABLE company
(
   company_id     INTEGER,
   company_name   VARCHAR2 (100)
)
/

CREATE SEQUENCE company_id_seq
/

DECLARE
   comp_id#    NUMBER;
   comp_name   CHAR (20) := 'ACME SHOWERS';
BEGIN
   SELECT company_id_seq.NEXTVAL INTO comp_id# FROM DUAL;

   INSERT INTO company (company_id, company_name)
        VALUES (comp_id#, comp_name);
END;
/