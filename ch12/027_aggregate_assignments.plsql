DECLARE
   TYPE name_t IS TABLE OF VARCHAR2 (100)
                     INDEX BY PLS_INTEGER;

   old_names   name_t;
   new_names   name_t;
BEGIN
   /* Assign values to old_names table */
   old_names (1) := 'Smith';
   old_names (2) := 'Harrison';

   /* Assign values to new_names table */
   new_names (111) := 'Hanrahan';
   new_names (342) := 'Blimey';

   /* Transfer values from new to old */
   old_names := new_names;

   /* This statement will display 'Hanrahan' */
   DBMS_OUTPUT.put_line (
      old_names.FIRST || ': ' || old_names (old_names.FIRST)
   );
END;
/