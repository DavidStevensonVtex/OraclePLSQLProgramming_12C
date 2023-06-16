DECLARE
   CV         sys_refcursor;
   ceo_info   company%ROWTYPE;
BEGIN
   OPEN CV FOR
      'SELECT *
        FROM ' || company_table_name (company_pkg.current_company_id);

   LOOP
      FETCH CV
      INTO ceo_info;

      EXIT WHEN CV%NOTFOUND;
   END LOOP;

   CLOSE CV;
END;
/