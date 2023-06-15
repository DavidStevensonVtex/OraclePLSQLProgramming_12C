DECLARE
   some_clob   CLOB;
BEGIN
   IF some_clob IS NULL
   THEN
      --There is no data
      DBMS_OUTPUT.PUT_LINE('There is no data');
   ELSIF DBMS_LOB.getlength (some_clob) = 0
   THEN
      --There is no data
      DBMS_OUTPUT.PUT_LINE('There is no data - length is 0');
   ELSE
      --Only now is there data
      DBMS_OUTPUT.PUT_LINE('There is data - length is greater than 0');
   END IF;

   IF NVL (DBMS_LOB.getlength (some_clob), 0) = 0
   THEN
      -- There is no data
      DBMS_OUTPUT.PUT_LINE('MVL - There is no data');
   ELSE
      -- There is data
      DBMS_OUTPUT.PUT_LINE('MVL - There is data');
   END IF;
END;
/