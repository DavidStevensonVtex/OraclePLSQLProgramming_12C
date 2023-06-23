set linesize 200

column trigger_name             format A30
column trigger_type             format a15
column table_name               format A30
column column_name              format A30
column status                   format a15
column description              format A30
column when_clause              format A30
column trigger_body             format A70
column table_owner              format a10
column referencing_names        format a30
column triggering_event         format a30

SELECT -- *
    trigger_name, trigger_type, table_name, status, trigger_body
  FROM user_triggers tr
 WHERE when_clause IS NULL AND 
       EXISTS (SELECT 'x'
                 FROM user_trigger_cols
                WHERE trigger_owner = USER
			    AND trigger_name = tr.trigger_name)
ORDER BY trigger_name ;
