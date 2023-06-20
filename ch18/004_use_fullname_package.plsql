DECLARE
   l_name           fullname_pkg.fullname_t;
   employee_id_in   employees.employee_id%TYPE := 108;
BEGIN
   l_name := fullname_pkg.fullname (employee_id_in);
   DBMS_OUTPUT.PUT_LINE(l_name);
END;
/