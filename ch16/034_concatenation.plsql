DECLARE
    val_in  NUMBER := 123456.78 ;
    v_start DATE := DATE '1997-06-01' ;
    V_end   DATE := DATE '1997-06-30' ;
BEGIN

    EXECUTE IMMEDIATE
        'UPDATE employees SET salary = ' || val_in || 
        ' WHERE hire_date between ' || 
            'TO_DATE( ''' || TO_CHAR(v_start) || ''')' ||
            ' AND ' ||
            'TO_DATE( ''' || TO_CHAR(v_end) || ''')' ;

END ;
/