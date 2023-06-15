DECLARE
    names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Arron,Jeff' ;
BEGIN
    DBMS_OUTPUT.PUT_LINE(REPLACE(names, ',', CHR(10)));
END ;
/