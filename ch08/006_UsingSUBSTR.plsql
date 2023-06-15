DECLARE
    names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Arron,Jeff' ;
    names_adjusted VARCHAR2(61) ;
    comma_location NUMBER := 0 ;
    prev_location NUMBER := 0 ;
BEGIN
    names_adjusted := names || ',' ;
    LOOP
        comma_location := INSTR(names, ',', comma_location+1) ;
        EXIT WHEN comma_location = 0 ;
        DBMS_OUTPUT.PUT_LINE(SUBSTR(names_adjusted, prev_location + 1, comma_location - prev_location - 1));
        prev_location := comma_location ;
    END LOOP ;
END ;
/