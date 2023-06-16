CREATE OR REPLACE PROCEDURE show_parts_inventory (
    parts_table IN VARCHAR2,
    where_in IN VARCHAR2
)
IS
    TYPE query_curtype IS REF CURSOR ;
    dyncur query_curtype ;
BEGIN
    OPEN dyncur FOR
        'SELECT * FROM ' || parts_table ||
        ' WHERE ' || WHERE_IN ;
END ;
/  
