DECLARE
   TYPE emp_copy_t IS TABLE OF employees%ROWTYPE
                         INDEX BY PLS_INTEGER;

   l_emps   emp_copy_t;
BEGIN
   FOR emp_rec IN (SELECT *
                     FROM employees)
   LOOP
      l_emps (emp_rec.employee_id) := emp_rec;
   END LOOP;
END;
/