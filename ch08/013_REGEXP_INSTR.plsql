DECLARE
    names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Jeff,Aaron' ;
    names_adjusted VARCHAR2(61) ;
    comma_delimited BOOLEAN ;
    j_location NUMBER ;
BEGIN
    -- Look for the pattern
    comma_delimited := REGEXP_LIKE(names, '^([a-z ]*,)+([a-z ]*)$', 'i') ;

    -- Only do more if we do, in fact, have a comma-delimited list
    IF comma_delimited THEN
        j_location := REGEXP_INSTR(names, 'A[a-z]*[^aeiou],|A[a-z]*[^aeiou]$');        
        j_location := REGEXP_INSTR(names, 'A[a-z]*[^aeiou],', 1, 1, 0, 'c' );
        DBMS_OUTPUT.PUT_LINE(j_location);
    END IF ;
END ;
/