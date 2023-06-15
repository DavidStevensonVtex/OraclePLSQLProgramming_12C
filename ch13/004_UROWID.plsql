DECLARE
    myrowid UROWID ;
BEGIN
    SELECT ROWID
    INTO myrowid 
    FROM EMPLOYEES 
    WHERE EMPLOYEE_ID = 100 ;
    DBMS_OUTPUT.PUT_LINE('myrowid: ' || myrowid ) ;
END ;
/
