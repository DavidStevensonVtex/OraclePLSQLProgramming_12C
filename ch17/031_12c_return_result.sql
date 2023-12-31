CREATE OR REPLACE PROCEDURE show_emps (
   deparatment_id_in IN employees.department_id%TYPE
)
IS
   l_cursor SYS_REFCURSOR ;
BEGIN
   OPEN l_cursor FOR
      SELECT last_name, first_name
      FROM employees
      WHERE department_id = deparatment_id_in
      ORDER BY last_name, first_name ;

      DBMS_SQL.return_result ( l_cursor ) ;
END ;
/

BEGIN
   show_emps ( 20 ) ;
END ;
/