DECLARE
   TYPE emp_copy_nt IS TABLE OF employees%ROWTYPE;

   l_emps   emp_copy_nt;
BEGIN
   SELECT *
     BULK COLLECT
     INTO l_emps
     FROM employees;
END;
/