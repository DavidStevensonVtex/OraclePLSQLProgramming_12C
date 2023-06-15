-- GRANT EXECUTE ON color_tab_t TO JOE ;
-- /

SELECT type_name FROM all_types WHERE OWNER = USER AND typecode = 'COLLECTION' ;
/

-- What was the original thpe definition of collection Foo_t ?
column text format a100
SELECT text FROM all_source WHERE owner = USER AND name = 'COLOR_NT' AND type = 'TYPE' ORDER BY line ;
/

-- What columns implement Foo_t 
-- and data_type = 'AUTHORS_T' ;
column table_name format a30
column column_name format a30
SELECT table_name, column_name FROM all_tab_columns WHERE owner = USER AND data_type LIKE '%_T' 
ORDER BY table_name, column_name 
/

column name format a30
column type format a30
column referenced_name format a30
SELECT name, type, referenced_name FROM all_dependencies WHERE owner = USER AND referenced_name LIKE '%_T' order by name, type 
/