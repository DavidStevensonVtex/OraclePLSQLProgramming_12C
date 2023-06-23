set linesize 200

column object_name         format a30
column argument_name       format a30
column overload            format a15
column data_type           format a20

SELECT object_name, argument_name, overload
     , POSITION, SEQUENCE, data_level, data_type
  FROM user_arguments
 WHERE data_type IN ('LONG','CHAR');
