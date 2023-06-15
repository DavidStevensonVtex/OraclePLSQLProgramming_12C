CREATE OR REPLACE TYPE volunteer_list_ar IS TABLE OF VARCHAR2 (100)
/

DECLARE
   volunteer_list   volunteer_list_ar := volunteer_list_ar ('Steven', 'David', 'Ralph', 'Tom');

   PROCEDURE assign_tasks (list_in IN volunteer_list_ar)
   IS
   BEGIN
      NULL;
   END;
BEGIN
   DBMS_OUTPUT.PUT_LINE(volunteer_list.COUNT);
   IF volunteer_list.COUNT > 0
   THEN
      assign_tasks (volunteer_list);
   END IF;
END;
/