CREATE OR REPLACE TRIGGER error_logger
AFTER SERVERERROR
ON SCHEMA
DECLARE

  v_errnum    NUMBER;          -- the Oracle error #
  v_now       DATE := SYSDATE; -- current time
  v_msg       VARCHAR2(8000) := 'Hello world!' ;
BEGIN

  -- for every error in the error stack...
  DBMS_OUTPUT.PUT_LINE('TRIGGER error_logger');
  FOR e_counter IN 1..ORA_SERVER_ERROR_DEPTH LOOP

    -- write the error out to the log table; no
    -- commit is required because we are in an
    -- autonomous transaction
    v_msg := ORA_SERVER_ERROR_MSG(e_counter);
    DBMS_OUTPUT.PUT_LINE(v_msg);
    INSERT INTO error_log(error_id,
                          username,
                          error_number,
                          error_msg,
                          sequence,
                          timestamp)
    VALUES(error_seq.nextval,
           USER,
           ORA_SERVER_ERROR(e_counter),
           v_msg,
           e_counter,
           v_now);

  END LOOP;  -- every error on the stack

END;
/


