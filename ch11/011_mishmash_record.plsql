DECLARE
    SUBTYPE long_line_type IS VARCHAR2 (2000);

    TYPE employee_ids_tabletype IS TABLE OF employees.employee_id%TYPE
                                    INDEX BY BINARY_INTEGER;

   TYPE company_rectype IS RECORD (
      company_id      company.company_id%TYPE
    , company_name    company.name%TYPE
    , new_hires_tab   employee_ids_tabletype
   );

    TYPE mismash_rectype IS RECORD (
        emp_number NUMBER(10) NOT NULL := 0,
        paragraph_text long_line_type,
        company_nm company.name%TYPE,
        -- total_sales company_sales.total_sales%TYPE := 0,
        new_hires_tab employee_ids_tabletype,
        prefers_nonsmoking_fl BOOLEAN := FALSE,
        new_company_rec company_rectype 
    ) ;
BEGIN
    NULL ;
END ;
/