DECLARE
   TYPE emp_copy_t IS TABLE OF employees%ROWTYPE;

   l_emps   emp_copy_t := emp_copy_t ();
BEGIN
   FOR emp_rec IN (SELECT *
                     FROM employees)
   LOOP
      l_emps.EXTEND;
      l_emps (l_emps.LAST) := emp_rec;
   END LOOP;
END;
/