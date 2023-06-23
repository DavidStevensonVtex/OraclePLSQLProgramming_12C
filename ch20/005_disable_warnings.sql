/* File on web: disable_warnings.sql */
SELECT NAME, type, plsql_warnings
  FROM user_plsql_object_settings
 WHERE plsql_warnings LIKE '%DISABLE%'
/
