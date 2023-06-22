CREATE OR REPLACE TRIGGER undroppable
BEFORE DROP ON SCHEMA
BEGIN
    RAISE_APPLICATION_ERROR(-20000, 'You cannot drop me! I am invincible!');
END ;
/