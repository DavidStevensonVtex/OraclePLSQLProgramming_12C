DECLARE
    names VARCHAR2(60) := 'Anna,Matt,Joe,Nathan,Andrew,Arron,Jeff' ;
    names_adjusted VARCHAR2(61) ;
    comma_delimited BOOLEAN ;
BEGIN
    -- Look for the pattern
    comma_delimited := REGEXP_LIKE(names, '^([a-z A-Z]*,)+([a-z A-Z]*){1}$') ;

    -- Display the result
    DBMS_OUTPUT.PUT_LINE (
        CASE comma_delimited
            WHEN true THEN 'We have a delimited list!'
            ELSE 'The pattern does not match.'
        END ) ;
END ;
/