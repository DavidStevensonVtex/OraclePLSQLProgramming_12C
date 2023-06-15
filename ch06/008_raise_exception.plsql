DECLARE
   invalid_id exception;
   id_value   VARCHAR2 (30);

   FUNCTION id_for (NAME_IN IN VARCHAR2)
      RETURN INTEGER
   IS
   BEGIN
      RETURN 1;
   END;
BEGIN
   id_value := id_for ('SMITH');

   IF SUBSTR (id_value, 1, 1) != 'X'
   THEN
      RAISE invalid_id;
        -- ERROR at line 1:
        -- ORA-06510: PL/SQL: unhandled user-defined exception
        -- ORA-06512: at line 16
   END IF;
END;
/