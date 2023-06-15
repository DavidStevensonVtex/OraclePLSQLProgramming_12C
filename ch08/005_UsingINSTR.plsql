DECLARE
    names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Arron,Jeff' ;
    comma_location NUMBER := 0 ;
BEGIN
    LOOP
        comma_location := INSTR(names, ',', comma_location+1) ;
        EXIT WHEN comma_location = 0 ;
        DBMS_OUTPUT.PUT_LINE(comma_location) ;
    END LOOP ;
END ;
/