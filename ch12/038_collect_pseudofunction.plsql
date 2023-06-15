CREATE OR REPLACE TYPE strings_nt IS TABLE OF VARCHAR2(100) ;
/

column by_hire_date format a100
SELECT department_id,
    CAST(COLLECT ( last_name ORDER BY hire_date ) AS strings_nt) AS by_hire_date
FROM EMPLOYEES 
GROUP BY department_id ;
/

column unique_jobs format a80
SELECT department_id, CAST(COLLECT(DISTINCT job_id) AS strings_nt) AS unique_jobs
FROM employees 
GROUP BY department_id ;
/