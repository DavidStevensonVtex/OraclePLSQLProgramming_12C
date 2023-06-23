set linesize 200
set wrap on 

column type                 format a13
column opt_lvl              format 9999999
column plsql_code_type      format a15
column plsql_debug          format a11
column plsql_warnings       format a14
column plsql_ccflags        format a13
column plscope_settings     format a17
column nls_length_semantics format a20
SELECT name, type, plsql_optimize_level as opt_lvl, plsql_code_type, plsql_debug, plsql_warnings, plsql_ccflags, plscope_settings, nls_length_semantics
FROM user_plsql_object_settings ;