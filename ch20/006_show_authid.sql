column authid         format a20
column procedure_name format a35
column program_name   format a35

SELECT   AUTHID
       , p.object_name program_name
       , procedure_name subprogram_name
    FROM user_procedures p, user_objects o
   WHERE p.object_name = o.object_name
     AND p.object_name LIKE '&1'
ORDER BY AUTHID, procedure_name;
