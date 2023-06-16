CREATE OR REPLACE PACKAGE company_pkg
IS
   current_company_id   INTEGER;

   TYPE ceo_info_rt IS RECORD (
      mega_bucks    company.ceo_compensation%TYPE
    , achieved_by   company.cost_cutting%TYPE
   );
END company_pkg;
/

DECLARE
   CV    sys_refcursor;
   rec   company_pkg.ceo_info_rt;
BEGIN
   OPEN CV FOR
      'SELECT ceo_compensation, cost_cutting
        FROM '
      || company_table_name (company_pkg.current_company_id);

   LOOP
      FETCH CV
      INTO rec;

      EXIT WHEN CV%NOTFOUND;
   END LOOP;

   CLOSE CV;
END;
/