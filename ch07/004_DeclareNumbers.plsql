/* File on web: numbers.sql */
DECLARE 
    salary          NUMBER(9,2) ;   -- fixed point, seven to the left, two to the RIGHT
    raise_factor    NUMBER ;        -- decimal floating-point
    weeks_to_pay    NUMBER(2);      -- INTEGER
BEGIN
    salary := 1234567.89 ;
    raise_factor := 0.05 ;
    weeks_to_pay := 52 ;
END ;
/