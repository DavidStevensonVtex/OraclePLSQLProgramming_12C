DECLARE
   SUBTYPE long_line_type IS VARCHAR2 (2000);

   CURSOR company_sales_cur
   IS
      SELECT name, SUM (order_amount) total_sales
        FROM company c, orders o
       WHERE c.company_id = o.company_id;

   TYPE employee_ids_tabletype IS TABLE OF employees.employee_id%TYPE
                                     INDEX BY BINARY_INTEGER;

   TYPE company_rectype IS RECORD (
      company_id      company.company_id%TYPE
    , company_name    company.name%TYPE
    , new_hires_tab   employee_ids_tabletype
   );

   TYPE company_rectype2 IS RECORD (
      company_id      company.company_id%TYPE
    , company_name    company.name%TYPE
    , new_hires_tab   employee_ids_tabletype
   );
BEGIN
   NULL;
END;
/