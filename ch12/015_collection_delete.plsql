DROP TYPE list_t
/

CREATE OR REPLACE TYPE list_t IS TABLE OF VARCHAR2 (100)
/

CREATE OR REPLACE PROCEDURE keep_last (the_list IN OUT list_t)
AS
   first_elt          PLS_INTEGER := the_list.FIRST;
   next_to_last_elt   PLS_INTEGER := the_list.PRIOR (the_list.LAST);
BEGIN
--    DBMS_OUTPUT.PUT_LINE(the_list.count) ;
   the_list.delete (first_elt, next_to_last_elt);
--    DBMS_OUTPUT.PUT_LINE(the_list.count) ;
END;
/