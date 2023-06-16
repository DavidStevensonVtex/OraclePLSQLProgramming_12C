DECLARE
    val_in  NUMBER := 123456.78 ;
    v_start DATE := DATE '1997-06-01' ;
    V_end   DATE := DATE '1997-06-30' ;
BEGIN

    EXECUTE IMMEDIATE
        'UPDATE employees SET salary = :val ' ||
        'WHERE hire_date between :lodate AND :hidate ' 
    USING val_in, v_start, v_end ;

END ;
/