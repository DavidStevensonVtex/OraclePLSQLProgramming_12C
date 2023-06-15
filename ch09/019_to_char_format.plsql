BEGIN
   DBMS_OUTPUT.put_line (TO_CHAR (123.4567, '999.99'));
   DBMS_OUTPUT.put_line (TO_CHAR (123.4567, '999'));
--  123.46
--  123
END;
/