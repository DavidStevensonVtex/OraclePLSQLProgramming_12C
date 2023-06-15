DECLARE
    TYPE emp_curtype IS REF CURSOR ;
    emp_curvar emp_curtype ;
BEGIN
    OPEN emp_curvar FOR SELECT * FROM employees ;
    OPEN emp_curvar FOR SELECT employee_id FROM employees ;
    OPEN emp_curvar FOR SELECT company_id, name FROM company ;
END ;
/