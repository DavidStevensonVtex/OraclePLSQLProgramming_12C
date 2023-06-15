DECLARE
   company_name                   CHAR (30) := 'Feuerstein and Friends';
   char_parent_company_name       CHAR (35) := 'Feuerstein and Friends';
   varchar2_parent_company_name   VARCHAR2 (35) := 'Feuerstein and Friends';
BEGIN
   --Compare two CHARs, so blank-padding is used
   IF company_name = char_parent_company_name
   THEN
      DBMS_OUTPUT.put_line ('first comparison is TRUE');
   ELSE
      DBMS_OUTPUT.put_line ('first comparison is FALSE');
   END IF;

   --Compare a CHAR and a VARCHAR2, so nonblank-padding is used
   IF company_name = varchar2_parent_company_name
   THEN
      DBMS_OUTPUT.put_line ('second comparison is TRUE');
   ELSE
      DBMS_OUTPUT.put_line ('second comparison is FALSE');
   END IF;

    IF TRIM(company_name) = TRIM(varchar2_parent_company_name)
   THEN
      DBMS_OUTPUT.put_line ('third trimmed comparison is TRUE');
   ELSE
      DBMS_OUTPUT.put_line ('third trimmed comparison is FALSE');
   END IF;
END;
/