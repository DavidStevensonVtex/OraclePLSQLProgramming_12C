DECLARE
    TYPE curvar_type IS REF CURSOR ;
    curvar1 curvar_type ;
    curvar2 curvar_type ;
BEGIN
    OPEN curvar1 FOR SELECT * FROM fairy_tales ;
    curvar2 := curvar1 ;
    FETCH curvar1 INTO story ;
    FETCH curvar2 INTO story ;
    CLOSE curvar2 ;
    FETCH curvar1 INTO story ;
END ;
/