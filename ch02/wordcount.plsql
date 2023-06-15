CREATE OR REPLACE FUNCTION wordcount ( str IN VARCHAR2)
    return PLS_INTEGER
AS
    words PLS_INTEGER := 0 ;
    len PLS_INTEGER := NVL(LENGTH(str), 0);
    inside_a_word BOOLEAN := FALSE ;
BEGIN
    FOR i IN 1..len + 1 
    LOOP
        IF ASCII(SUBSTR(str, i, 1)) < 33 or i > len 
        THEN
            IF inside_a_word
            THEN
                words := words + 1;
                inside_a_word := FALSE ;
            END IF ;
        ELSE
            inside_a_word := TRUE ;
        END IF ;
    END LOOP;
    RETURN words ;
END ;
/