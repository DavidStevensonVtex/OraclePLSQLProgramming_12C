CREATE OR REPLACE TRIGGER after_logon
   AFTER LOGON ON SCHEMA
DECLARE
   v_sql VARCHAR2 (100)
         :=    'ALTER SESSION ENABLE RESUMABLE '
            || 'TIMEOUT 10 NAME '
            || ''''
            || 'OLAP Session'
            || '''';
BEGIN
   EXECUTE IMMEDIATE v_sql;

   DBMS_SESSION.set_context ('OLAP Namespace'
                           , 'Customer ID'
                           , load_user_customer_id
                            );
END;
/