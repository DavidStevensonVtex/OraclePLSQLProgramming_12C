-- Component NAME  Return datatype

-- YEAR            NUMBER
-- MONTH           NUMBER
-- DAY             NUMBER
-- HOUR            NUMBER
-- MINUTE          NUMBER
-- SECOND          NUMBER
-- TIMEZONE_HOUR   NUMBER
-- TIMEZONE_MINUTE NUMBER
-- TIMEZONE_REGION VARCHAR2
-- TIMEZONE_ABBR   VARCHAR2

BEGIN
   IF EXTRACT (MONTH FROM SYSDATE) = 11
   THEN
      DBMS_OUTPUT.put_line ('It is November');
   ELSE
      DBMS_OUTPUT.put_line ('It is not November');
   END IF;
END;
/