DROP table friends ;
/

CREATE TABLE friends (name VARCHAR2 (100), location VARCHAR2 (100))
/

CREATE OR REPLACE FUNCTION jealousy_level (NAME_IN IN friends.name%TYPE)
   RETURN NUMBER
AS
   CURSOR jealousy_cur
   IS
      SELECT location
        FROM friends
       WHERE name = UPPER (NAME_IN);

   jealousy_rec   jealousy_cur%ROWTYPE;
   retval         NUMBER;
BEGIN
   OPEN jealousy_cur;

   FETCH jealousy_cur
   INTO jealousy_rec;

   IF jealousy_cur%FOUND
   THEN
        DBMS_OUTPUT.PUT_LINE('Row count: ' || jealousy_cur%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE('Location: ' || jealousy_rec.location);
      IF jealousy_rec.location = 'PUERTO RICO'
      THEN
         retval := 10;
      ELSIF jealousy_rec.location = 'CHICAGO'
      THEN
         retval := 1;
      END IF;
   ELSE
        DBMS_OUTPUT.PUT_LINE('Row count: ' || jealousy_cur%ROWCOUNT);
   END IF;

   CLOSE jealousy_cur;

   RETURN retval;
EXCEPTION
   WHEN OTHERS
   THEN
      IF jealousy_cur%ISOPEN
      THEN
         CLOSE jealousy_cur;
      END IF;
END;
/