DECLARE
   TYPE emp_copy_t IS TABLE OF employees%ROWTYPE;

   l_emps   emp_copy_t := emp_copy_t ();
BEGIN
   l_emps.EXTEND;

   SELECT *
     INTO l_emps (1)
     FROM employees
    WHERE employee_id = 7521;
END;
/