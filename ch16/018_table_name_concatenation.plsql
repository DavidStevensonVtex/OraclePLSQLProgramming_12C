CREATE OR REPLACE PROCEDURE truncobj (nm  IN VARCHAR2
                                    , tp  IN VARCHAR2:= 'TABLE'
                                    , sch IN VARCHAR2:= NULL
                                     )
IS
BEGIN
   EXECUTE IMMEDIATE 'TRUNCATE ' || tp || ' ' || NVL (sch, USER) || '.' || nm;
END;
/