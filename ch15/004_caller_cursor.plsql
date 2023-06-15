DECLARE
   CURSOR caller_cur
   IS
      SELECT *
        FROM callers;
BEGIN
   FOR caller_rec IN caller_cur
   LOOP
      UPDATE call
         SET caller_id = caller_rec.caller_id
       WHERE call_timestamp < SYSDATE;

      IF sql%FOUND
      THEN
         DBMS_OUTPUT.put_line ('Calls updated for ' || caller_rec.caller_id);
      END IF;
   END LOOP;
END;
/