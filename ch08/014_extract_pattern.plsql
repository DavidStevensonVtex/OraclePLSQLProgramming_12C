DECLARE
    contact_info VARCHAR2(200) := '
        address:
        1060 W. Addison St.
        Chicago, IL 60613
        home 773-555-5253
        ';

    phone_pattern VARCHAR2(90) := '\(?\d{3}\)?[[:space:]\.\-]?\d{3}[[:space:]\.\-]?\d{4}';
BEGIN
    DBMS_OUTPUT.PUT_LINE('The phone number is: ' || REGEXP_SUBSTR(contact_info, phone_pattern, 1, 1)) ;
END ;
/