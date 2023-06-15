BEGIN
    GOTO second_output ;
    DBMS_OUTPUT.PUT_LINE('This line will never execute');
    <<second_output>>
    DBMS_OUTPUT.PUT_LINE('We are here!');
END ;
/