BEGIN
    exec_ddl('CREATE INDEX emp_u_1 ON employees (last_name)');
END ;
/