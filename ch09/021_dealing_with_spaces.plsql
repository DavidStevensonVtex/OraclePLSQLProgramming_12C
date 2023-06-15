DECLARE
   b   VARCHAR2 (30);
   c   VARCHAR2 (30);
BEGIN
   b := TO_CHAR (-123.4, '999.99');
   c := TO_CHAR (123.4, '999.99');
   DBMS_OUTPUT.put_line (':' || b || ' ' || TO_CHAR (LENGTH (b)));
   DBMS_OUTPUT.put_line (':' || c || ' ' || TO_CHAR (LENGTH (c)));
   DBMS_OUTPUT.put_line('');
-- :-123.40 7
-- : 123.40 7 -- TRIM can be used to remove leading spaces.

   b := TO_CHAR (-123.4, 'TM9');
   c := TO_CHAR (123.4, 'TM9');
   DBMS_OUTPUT.put_line (':' || b || ' ' || TO_CHAR (LENGTH (b)));
   DBMS_OUTPUT.put_line (':' || c || ' ' || TO_CHAR (LENGTH (c)));
-- :-123.4 6
-- :123.4 5
END;
/