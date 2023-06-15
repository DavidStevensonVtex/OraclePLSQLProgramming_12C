DECLARE
   TYPE emp_copy_t IS TABLE OF employees%ROWTYPE;

   l_emps     emp_copy_t := emp_copy_t ();
   l_emprec   employees%ROWTYPE;
BEGIN
   l_emprec.first_name := 'Steven';
   l_emprec.salary := 10000;
   l_emps.EXTEND;
   l_emps (l_emps.LAST) := l_emprec;
END;
/