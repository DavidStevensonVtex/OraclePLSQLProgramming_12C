column referenced_name format a40
column referenced_type format a40
column dependency_type format a20
set linesize 200

SELECT referenced_name, referenced_type, dependency_type
FROM user_dependencies
WHERE name = 'INCREMENT_BY_TWO' and referenced_type = 'TRIGGER' ;